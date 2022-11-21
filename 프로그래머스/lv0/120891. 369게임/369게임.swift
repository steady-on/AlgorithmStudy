import Foundation

func solution(_ order:Int) -> Int { Array("\(order)").filter { "369".contains($0) }.count }