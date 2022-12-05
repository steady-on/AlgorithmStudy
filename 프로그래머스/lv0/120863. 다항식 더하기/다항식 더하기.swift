import Foundation

func solution(_ polynomial:String) -> String {
    var polynomial = polynomial.components(separatedBy: " + ")
    var x: Int = 0
    var n: Int = 0
    
    var result = ""
    
    for num in polynomial {
        if num == "x" {
            x += 1
        } else if num.contains("x") {
            x += Int(String(num.split(separator:"x")[0]))!
        } else {
            n += Int(num)!
        }
    }
    
    if x == 0 {
        result = String(n)
    } else {
        if x == 1 {
            result = "x\(n == 0 ? "" : " + \(n)")"
        } else {
            result = "\(x)x\(n == 0 ? "" : " + \(n)")"
        }
    }
    
    return result
}