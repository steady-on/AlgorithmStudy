import Foundation

func solution(_ myString:String, _ n:Int) -> String { myString.map { String(repeating: String($0), count: n)}.joined() }