import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let pairs: [(Character, Character)] = [("R", "T"), ("C", "F"), ("J", "M"), ("A", "N")]
    var scores: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    
    for (question, choice) in zip(survey, choices) {
        let left = question.first!
        let right = question.last!
        let score = abs(choice - 4)
        
        if choice < 4 {
            scores[left]! += score 
        } else {
            scores[right]! += score
        }
    }
    
    var result = ""
    
    for (left, right) in pairs {
        if scores[left]! >= scores[right]! {
            result.append(left)
        } else {
            result.append(right)
        }
    }
    
    return result
}