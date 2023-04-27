import Foundation

func solution(_ numList:[Int]) -> Int {
    let multiply: Int = numList.reduce(1, *)
    let sum: Int = numList.reduce(0, +)
    let square: Int = sum * sum
    
    return multiply < square ? 1 :0
}