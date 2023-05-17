import Foundation

func solution(_ myStrings:[String], _ parts:[[Int]]) -> String {
    var result = ""
    
    for (string, part) in zip(myStrings, parts) {
        let (a, b) = (part[0], part[1])
        let strArr = Array(string)[a...b]
        result += String(strArr)
    }
    
    return result
}