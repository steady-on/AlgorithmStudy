import Foundation

func solution(_ myString:String) -> Int { myString.compactMap {Int(String($0))}.reduce(0, +) }