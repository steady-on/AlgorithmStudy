import Foundation

func solution(_ myString:String) -> Int {
    let myString = myString.components(separatedBy: " ")
    var result: Int = Int(myString[0])!
    
    for index in stride(from:1, to:myString.count, by: 2) {
        if myString[index] == "+" {
            result += Int(myString[index + 1])!
        } else {
            result -= Int(myString[index + 1])!
        }
    }
    
    return result
}