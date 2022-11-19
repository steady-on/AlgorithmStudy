import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result: Int = -1000000000000000
    
    for i in 0..<numbers.count {
        for j in 1..<numbers.count {
            if (i != j) {
                if result < numbers[i] * numbers[j] {
                    result = numbers[i] * numbers[j]
                }
            }
        }
    }
    
    return result
}