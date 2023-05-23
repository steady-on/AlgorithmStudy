import Foundation

func solution(_ myString:String, _ alp:String) -> String { myString.replacingOccurrences(of: alp, with: alp.uppercased()) }