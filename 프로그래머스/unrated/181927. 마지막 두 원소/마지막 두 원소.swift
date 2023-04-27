import Foundation

func solution(_ numList:[Int]) -> [Int] {
    let last = numList[numList.count - 1]
    let before = numList[numList.count - 2]
 
    return numList + [last > before ? last - before : last * 2]
}