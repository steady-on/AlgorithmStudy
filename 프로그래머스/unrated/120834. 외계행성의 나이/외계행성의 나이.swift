import Foundation

func solution(_ age:Int) -> String {
    let alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    return String(age).map { alpha[Int(String($0))!] }.joined()
}