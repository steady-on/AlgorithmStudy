import Foundation

func solution(_ strArr:[String]) -> [String] { strArr.filter { $0.contains("ad") == false } }