import Foundation

func solution(_ myString:String) -> Int {
    var replace = ""
    
    for char in myString {
        if char.isNumber {
            replace.append(char)
        } else {
            replace.append("a")
        }
    }
    
    let numbers = replace.components(separatedBy: "a").compactMap { Int($0) }.reduce(0, +)
    
    return numbers
}