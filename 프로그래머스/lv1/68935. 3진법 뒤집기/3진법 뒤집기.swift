import Foundation

func solution(_ n:Int) -> Int {
    let radix3Reversed = String(n, radix: 3).reversed()
    
    return Int(String(radix3Reversed), radix:3)!
}