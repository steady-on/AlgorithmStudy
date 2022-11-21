import Foundation

func solution(_ s:String) -> String {
    var dict:[Character:Int] = [:]
    
    for c in s {
        dict[c] = (dict[c] ?? 0) + 1
    }
    
    return String(dict.filter { $1 == 1 }.keys.sorted())
}