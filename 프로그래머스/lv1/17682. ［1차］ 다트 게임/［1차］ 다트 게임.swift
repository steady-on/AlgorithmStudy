enum Bonus: String {
    case s = "S"
    case d = "D"
    case t = "T"
}

enum Option: String {
    case star = "*"
    case hashtag = "#"
    case none = ""
}

struct Chance {
    let point: Int
    let bonus: Bonus
    var option: Option
    
    var score: Int {
        var sum = 0
        
        switch bonus {
        case .s: sum = point
        case .d: sum = point * point
        case .t: sum = point * point * point
        }
        
        switch option {
        case .star: sum *= 2
        case .hashtag: sum *= (-1)
        case .none: sum *= 1
        }
        
        return sum
    }
}

func convertStringToChance(_ dartResult: String) -> [Chance] {
    let points = dartResult.split { $0.isLetter || $0 == "*" || $0 == "#" }.compactMap { Int($0) }
    let bonusAndOption = dartResult.split { $0.isNumber }
    var chances = [Chance]()
    
    for (point, str) in zip(points, bonusAndOption) {
        var bonus: Bonus
        var option = Option.none
        
        if str.count == 1 {
            bonus = Bonus(rawValue: String(str))!
        } else {
            bonus = Bonus(rawValue: String(str.first!))!
            option = Option(rawValue: String(str.last!))!
        }
        
        chances.append(Chance(point: point, bonus: bonus, option: option))
    }

    return chances
}

func makereadyScore(_ chances: [Chance]) -> [Int] {
    var scores = chances.map { (score: $0.score, option: $0.option) }
    
    for (index, element) in scores.enumerated() where index > 0 && element.option == .star {
        scores[index-1].score *= 2
    }
    
    return scores.map { $0.score }
}

func solution(_ dartResult:String) -> Int {
    let chances = convertStringToChance(dartResult)
    let scores = makereadyScore(chances)

    return scores.reduce(0, +)
}