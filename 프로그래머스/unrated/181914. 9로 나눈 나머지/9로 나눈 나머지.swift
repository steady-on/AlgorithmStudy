import Foundation

func solution(_ number:String) -> Int { Array(number).compactMap { Int(String($0)) }.reduce(0, +) % 9 }