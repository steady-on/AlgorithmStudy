enum Bonus: String {
    case s = "S"
    case d = "D"
    case t = "T"
}

enum Option: String {
    case star = "*"
    case hashtag = "#"
}

struct Chance {
    let point: Int
    let bonus: Bonus
    var option: Option? = nil
    
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
        
        return sum
    }
}

func convertStringToChance(_ dartResult: String) -> [Chance] {
    var resultCharacters = Array(dartResult)
    var chances = [Chance]()
    
    var point = ""
    while resultCharacters.isEmpty == false {
        let temp = resultCharacters.removeFirst()
        
        if temp.isNumber {
            point.append(temp)
            if temp == Character("1") && resultCharacters[0].isNumber {
                point.append(resultCharacters.removeFirst())
            }
        } else {
            let bonus = Bonus(rawValue: String(temp))!
            var chance = Chance(point: Int(point)!, bonus: bonus)
            
            if resultCharacters.isEmpty == false && resultCharacters[0].isPunctuation {
                let option = Option(rawValue: String(resultCharacters.removeFirst()))
                chance.option = option
            }
            
            chances.append(chance)
            point = ""
        }
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