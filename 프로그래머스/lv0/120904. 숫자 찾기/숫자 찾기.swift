import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let num = Array("\(num)")
    let k = String(k).first!
    
    if let index = num.firstIndex(of: k) {
        return index + 1
    } else {
        return -1
    }

    return  -1
}