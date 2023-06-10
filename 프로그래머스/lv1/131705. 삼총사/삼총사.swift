import Foundation

func grouped(_ number: [Int]) -> [(Int, Int, Int)] {
    let last = number.count
    var result = [(Int, Int, Int)]()
    
    for first in number.indices {
        for second in (first+1) ..< last {
            for third in (second+1) ..< last {
                result.append((number[first], number[second], number[third]))
            }
        }
    }
    
    return result
}

func solution(_ number:[Int]) -> Int {
    let orderedPair = grouped(number)
    var count = 0
    
    for (first, second, third) in orderedPair where first + second + third == 0 {
        count += 1
    }
    
    return count
}