import Foundation

func solution(_ numStr:String) -> Int { numStr.reduce(0) { $0 + Int(String($1))! } }