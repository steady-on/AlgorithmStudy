import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []
    
    for row in numbers.indices {
        for col in row..<numbers.count {
            if row != col {
                result.insert( numbers[row] + numbers[col] )
            }
        }
    }
    
    return Array(result).sorted()
}