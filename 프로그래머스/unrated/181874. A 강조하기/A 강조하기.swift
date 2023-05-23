import Foundation

func solution(_ myString:String) -> String { myString.map { "aA".contains($0) ? "A" : $0.lowercased() }.joined() }