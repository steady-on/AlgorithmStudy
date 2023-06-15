enum Bonus: Character {
    case s = "S"
    case d = "D"
    case t = "T"
}

enum Option: Character {
    case star = "*"
    case hashtag = "#"
}

struct Chance {
    let point: Int
    let bonus: Bonus
    var option: Option?
    var isRevision: Bool = false
    
    var score: Int {
        var sum = 0
        
        switch bonus {
        case .s: sum = point
        case .d: sum = point * point
        case .t: sum = point * point * point
        }
        
        if let option = self.option {
            switch option {
            case .star: sum *= 2
            case .hashtag: sum *= (-1)
            }
        }
        
        if isRevision { sum *= 2 }
        
        return sum
    }
}

func convertStringToChance(_ dartResult: String) -> [Chance] {
    let points = dartResult.split { $0.isNumber == false }.compactMap { Int($0) }
    let bonusAndOption = dartResult.split { $0.isNumber }
    var chances = [Chance]()

    for (point, str) in zip(points, bonusAndOption) {
        let bonus = Bonus(rawValue: str.first!)!
        let option = Option(rawValue: str.last!)

        chances.append(Chance(point: point, bonus: bonus, option: option))
    }

    return chances
}

func reviceScore(_ chances: [Chance]) -> [Chance] {
    var revicedChances = chances
    
    for index in 1...2 where chances[index].option == .star {
        revicedChances[index-1].isRevision = true
    }
    
    return revicedChances
}

func solution(_ dartResult:String) -> Int {
    let chances = convertStringToChance(dartResult)
    let revicedChances = reviceScore(chances)

    return revicedChances.reduce(0) { $0 + $1.score }
}
