import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String { String(code.enumerated().filter { $0.offset % q == r }.map { $0.element }) }