import Foundation

func solution(_ arr:[Int]) -> [Int] { arr.flatMap { Array(repeating: $0, count: $0) } }