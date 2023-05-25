import Foundation

func solution(_ rnyString:String) -> String { rnyString.map { $0 == "m" ? "rn" : String($0) }.joined() }