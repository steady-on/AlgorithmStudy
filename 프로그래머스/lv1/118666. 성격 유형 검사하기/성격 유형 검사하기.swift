import Foundation

struct PersonalityTypeTest {
    var rScore = 0
    var tScore = 0
    var cScore = 0
    var fScore = 0
    var jScore = 0
    var mScore = 0
    var aScore = 0
    var nScore = 0
    
    var judgeRvsT: Character { rScore >= tScore ? "R" : "T" }
    var judgeCvsF: Character { cScore >= fScore ? "C" : "F" }
    var judgeJvsM: Character { jScore >= mScore ? "J" : "M" }
    var judgeAvsN: Character { aScore >= nScore ? "A" : "N" }
    
    lazy var testResult = String([judgeRvsT, judgeCvsF, judgeJvsM, judgeAvsN])
    
    mutating func calculateScore(_ question: String, _ choice: Int) {
        let score = abs(choice - 4)
        
        switch question {
        case "RT":
            if choice < 4 { rScore += score } else { tScore += score }
        case "TR":
            if choice < 4 { tScore += score } else { rScore += score }
        case "CF":
            if choice < 4 { cScore += score } else { fScore += score }
        case "FC":
            if choice < 4 { fScore += score } else { cScore += score }
        case "JM":
            if choice < 4 { jScore += score } else { mScore += score }
        case "MJ":
            if choice < 4 { mScore += score } else { jScore += score }
        case "AN":
            if choice < 4 { aScore += score } else { nScore += score }
        default: // "NA"
            if choice < 4 { nScore += score } else { aScore += score }
        }
    }
}

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var personalityTypeTest = PersonalityTypeTest()
    
    for (question, choice) in zip(survey, choices) {
        personalityTypeTest.calculateScore(question, choice)
    }
    
    return personalityTypeTest.testResult
}