import Foundation

func solution(_ myString:String, _ m:Int, _ c:Int) -> String {
    var result = ""
    
    var i = c - 1
    for (index, char) in myString.enumerated() {
        if index == i { 
            result.append(char)
            i += m
        }
    }
    
    return result
}