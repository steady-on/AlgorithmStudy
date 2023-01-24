import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    let bin1 = Int(bin1, radix: 2)!
    let bin2 = Int(bin2, radix: 2)!
    
    return String(bin1+bin2, radix: 2)
}