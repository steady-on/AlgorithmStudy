import Foundation

func solution(_ myString:String, _ letter:String) -> String { myString.filter { String($0) != letter } }