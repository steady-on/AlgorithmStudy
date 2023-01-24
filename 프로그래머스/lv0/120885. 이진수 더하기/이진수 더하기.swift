import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    let bin1 = bin1.reversed() + String(repeating: "0", count: 11-bin1.count)
    let bin2 = bin2.reversed() + String(repeating: "0", count: 11-bin2.count)
    
    var result = ""
    
    var temp: String = ""
    for (i, j) in zip(bin1, bin2) {
        switch (i, j) {
        case ("0", "0"):
            result += temp.isEmpty ? "0" : temp
            temp = ""
        case ("1", "0"), ("0", "1"):
            if temp == "1" {
                result += "0"
            } else {
                result += "1"
                temp = ""
            }
        case ("1", "1"):
            if temp == "1" {
                result += "1"
            } else {
                result += "0"
                temp = "1"
            }
        default:
            break
        }
    }
        
    if let index = result.lastIndex(of: "1") {
        result = String(result[...index])
    } else {
        result = "0"
    }
    
    return String(result.reversed())
}