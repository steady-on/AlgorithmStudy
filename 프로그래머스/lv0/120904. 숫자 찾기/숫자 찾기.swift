import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let num = Array("\(num)")
    let k = String(k).first!

    return num.contains(k) ? (num.firstIndex(of: k)! + 1) : -1
}