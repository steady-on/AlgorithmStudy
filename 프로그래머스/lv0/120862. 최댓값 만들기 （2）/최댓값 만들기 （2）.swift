import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numbers: [Int] = numbers.sorted()
    
    return max(numbers[0] * numbers[1], numbers[numbers.count-1] * numbers[numbers.count-2])
}