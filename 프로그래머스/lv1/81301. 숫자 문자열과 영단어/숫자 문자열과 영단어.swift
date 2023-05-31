import Foundation

func solution(_ s:String) -> Int {
    let str: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var s = s

    for (idx, value) in str.enumerated() {
        s = s.replacingOccurrences(of: value, with: "\(idx)")
    }
    
    return Int(s)!
}