import Foundation

func solution(_ numList:[Int]) -> Int { numList.firstIndex { $0 < 0 } ?? -1 }