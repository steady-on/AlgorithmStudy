import Foundation

func solution(_ myString:String) -> String { myString.map { String($0) < "l" ? "l" : String($0) }.joined() }