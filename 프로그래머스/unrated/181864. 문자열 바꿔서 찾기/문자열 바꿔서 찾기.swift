import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let pat = pat.map { $0 == "A" ? "B" : "A" }.joined()
    return myString.contains(pat) ? 1 : 0
}