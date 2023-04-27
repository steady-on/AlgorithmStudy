import Foundation

func solution(_ numList:[Int]) -> [Int] {
    var numList = numList
    let suffix = numList.suffix(2)
    
    guard let first = suffix.first, let last = suffix.last else { return [] }
    
    if last > first {
        numList.append(last - first)
    } else {
        numList.append(last * 2)
    }
     
    return numList
}