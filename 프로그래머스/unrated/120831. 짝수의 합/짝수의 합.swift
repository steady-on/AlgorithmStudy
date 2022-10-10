import Foundation

func solution(_ n:Int) -> Int { (1...n).filter { $0 % 2 == 0 }.reduce(0, +) }