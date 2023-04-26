import Foundation

func solution(_ str1:String, _ str2:String) -> String { zip(str1, str2).map { "\($0)\($1)" }.joined() }