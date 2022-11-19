import Foundation

func solution(_ myString:String) -> String {
    var result: String = ""
    
    for c in myString {
        if String(c) == c.uppercased() {
            result += c.lowercased()
        } else {
            result += c.uppercased()
        }
    }
    
    return result
}