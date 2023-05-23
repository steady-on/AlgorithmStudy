import Foundation

func solution(_ myString:String, _ alp:String) -> String { myString.map { alp.contains($0) ? $0.uppercased() : String($0) }.joined() }