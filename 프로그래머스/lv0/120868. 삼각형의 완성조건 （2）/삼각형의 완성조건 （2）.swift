import Foundation

func solution(_ sides:[Int]) -> Int { Array(abs(sides[0]-sides[1])..<sides.reduce(-1, +)).count }