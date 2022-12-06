import Foundation

func solution(_ sides:[Int]) -> Int { Array((sides.max()!-sides.min()!)..<sides.reduce(-1, +)).count }