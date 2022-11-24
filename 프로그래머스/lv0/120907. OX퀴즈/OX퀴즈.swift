import Foundation

func solution(_ quiz:[String]) -> [String] {
    var quiz:[[String]] = quiz.map { $0.components(separatedBy: " ") }
    var result: [String] = []
    
    for quest in quiz {
        var temp: String = ""
        
        if let x = Int(quest[0]), let y = Int(quest[2]) {
            if quest[1] == "+" {
                temp = String(x + y)
            } else {
                temp = String(x - y)
            }
        }
        
        temp == quest[4] ? result.append("O") : result.append("X")
    }
    
    return result
}