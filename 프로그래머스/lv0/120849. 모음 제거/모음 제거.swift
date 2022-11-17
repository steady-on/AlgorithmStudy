import Foundation

func solution(_ myString:String) -> String { myString.filter{ !["a", "e", "i", "o", "u"].contains( $0 ) }}