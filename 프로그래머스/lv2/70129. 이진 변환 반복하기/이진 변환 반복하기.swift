import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var cycleCount = 0
    var totalZeroCount = 0
    
    while s != "1" {
        var zeroCount = 0
        var oneCount = 0
        
        for char in s {
            if char == "0" {
                zeroCount += 1
            } else {
                oneCount += 1
            }
        }
        
        totalZeroCount += zeroCount
        s = String(oneCount, radix: 2)
        cycleCount += 1
    }
    
    return [cycleCount, totalZeroCount]
}