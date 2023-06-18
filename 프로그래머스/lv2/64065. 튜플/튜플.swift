import Foundation

func solution(_ s:String) -> [Int] {
    let convertedS = convertIntArray(from: s)
    let tuple = makeTuple(from: convertedS)
    
    return tuple
}

func convertIntArray(from string: String) -> [[Int]] {
    let parts = string.components(separatedBy: "},")
    let filteredNumbers = parts.map { part in part.split { "{,}".contains($0) } }
    let convertedNumbers = filteredNumbers.map { $0.compactMap { Int($0) } }
    let sortedNumbers = convertedNumbers.sorted { $0.count < $1.count }
    return sortedNumbers
}

func makeTuple(from array: [[Int]]) -> [Int] {
    var tuple = [Int]()
    
    for numbers in array {
        for number in numbers {
            guard tuple.contains(number) == false else { continue }
            tuple.append(number)            
        }
    }
    
    return tuple
}