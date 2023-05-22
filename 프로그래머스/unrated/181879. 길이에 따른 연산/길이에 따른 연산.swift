import Foundation

func solution(_ numList:[Int]) -> Int { numList.count < 11 ? numList.reduce(1, *) : numList.reduce(0, +) }