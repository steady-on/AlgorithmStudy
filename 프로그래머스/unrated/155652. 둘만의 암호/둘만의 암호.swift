import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let keys = Array("abcdefghijklmnopqrstuvwxyz").filter { skip.contains($0) == false }
    var result = ""
    
    for char in s {
        if let before = keys.firstIndex(of: char) {
            let convertIndex = (before + index) % keys.count
            result.append(keys[convertIndex])
        }
    }
    
    return result
}