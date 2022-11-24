import Foundation

func solution(_ n:Int) -> Int { String(n).compactMap {Int(String($0))}.reduce(0, +) }
