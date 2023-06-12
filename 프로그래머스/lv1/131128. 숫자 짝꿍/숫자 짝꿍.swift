import Foundation

func findCommonNumbers(_ x: String, _ y: String) -> [String] {
    var xCount = Array(repeating: 0, count: 10)
    var yCount = Array(repeating: 0, count: 10)
    var commonNumbers = [String]()
    
    for char in x {
        let index = Int(String(char))!
        xCount[index] += 1
    }
    
    for char in y {
        let index = Int(String(char))!
        yCount[index] += 1
    }
    
    for (index, xNum) in xCount.enumerated() {
        let yNum = yCount[index]
        
        guard xNum != 0 && yNum != 0 else { continue }
        
        let min = xNum <= yNum ? xNum : yNum
        commonNumbers += Array(repeating: "\(index)", count: min)
    }
    
    return commonNumbers
}

func makePairNumber(_ nums: [String]) -> String {
    guard nums.isEmpty == false else { return "-1" }
    guard Set(nums) != ["0"] else { return "0" }
    
    return nums.sorted(by: >).joined()
}

func solution(_ x: String, _ y: String) -> String {
    let commonNumbers = findCommonNumbers(x, y)
    return makePairNumber(commonNumbers)
}