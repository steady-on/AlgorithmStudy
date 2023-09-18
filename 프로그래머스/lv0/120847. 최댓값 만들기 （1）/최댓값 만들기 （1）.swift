import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortedNumbers = numbers.sorted()
    return (sortedNumbers[sortedNumbers.count-1] * sortedNumbers[sortedNumbers.count-2])
}