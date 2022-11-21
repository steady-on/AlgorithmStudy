import Foundation

func solution(_ s:String) -> String {
    var dict:[Character:Int] = [:]
    
    for c in s {
        if dict.keys.contains(c) {
            dict[c]! += 1
        } else {
            dict[c] = 1
        }
    }
    
    return String(dict.filter { $1 == 1 }.keys.sorted())
}