import Foundation

func findCommonNumbers(_ x: String, _ y: String) -> [String] {
    let x = x.map { String($0) }
    let y = y.map { String($0) }
    var xDict = [String:Int]()
    var yDict = [String:Int]()
    var commonNumbers = [String]()
    
    x.forEach { xDict[$0, default: 0] += 1 }
    y.forEach { yDict[$0, default: 0] += 1 }
    
    for (num, xNum) in xDict {
        guard let yNum = yDict[num] else { continue }
        
        commonNumbers += Array(repeating: num, count: (xNum <= yNum ? xNum : yNum))
    }
    
    return commonNumbers
}

func makePairNumber(_ nums: [String]) -> String {
    guard nums.isEmpty == false else { return "-1" }
    guard Set(nums) != Set(["0"]) else { return "0" }
    
    return nums.sorted(by: >).joined()
}

func solution(_ x: String, _ y: String) -> String {
    let commonNumbers = findCommonNumbers(x, y)
    return makePairNumber(commonNumbers)
}