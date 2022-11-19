import Foundation

func solution(_ myString:String) -> String {
    var result: String = ""
    
    for s in myString {
        if !result.contains(s) {
            result.append(s)
        }
    }
    
    return result
}