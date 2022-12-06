import Foundation

func solution(_ myString:String) -> Int {
    var myString: String = myString.map { $0.isNumber ? String($0) : "a"}.joined()
    
    let numbers = myString.components(separatedBy: "a").compactMap { Int($0) }.reduce(0, +)
    
    return numbers
}