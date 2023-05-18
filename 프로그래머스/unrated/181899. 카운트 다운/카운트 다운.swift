import Foundation

func solution(_ start:Int, _ end:Int) -> [Int] { Array(stride(from: start, through: end, by: -1)) }