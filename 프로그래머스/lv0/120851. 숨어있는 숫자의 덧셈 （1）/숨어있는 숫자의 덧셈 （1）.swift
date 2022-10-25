import Foundation

func solution(_ myString:String) -> Int { myString.filter { $0.isNumber }.reduce(0, {$0 + Int(String($1))! }) }