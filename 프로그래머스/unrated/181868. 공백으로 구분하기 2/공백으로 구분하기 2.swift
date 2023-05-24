import Foundation

func solution(_ myString:String) -> [String] { myString.components(separatedBy: " ").filter { !$0.isEmpty } }