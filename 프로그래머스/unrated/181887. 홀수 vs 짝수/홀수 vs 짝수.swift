import Foundation

func solution(_ numList:[Int]) -> Int {
    let oddSum = stride(from: 0, through: numList.count - 1, by: 2).map { numList[$0] }.reduce(0, +)
    let evenSum = stride(from: 1, through: numList.count - 1, by: 2).map { numList[$0] }.reduce(0, +)
    
    return max(oddSum, evenSum)
}