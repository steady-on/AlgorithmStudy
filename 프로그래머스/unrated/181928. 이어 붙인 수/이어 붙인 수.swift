import Foundation

func solution(_ numList:[Int]) -> Int {
    var odd: String = ""
    var even: String = ""
    
    for num in numList {
        if num % 2 == 0 {
            even += String(num)
        } else {
            odd += String(num)
        }
    }
    
    return Int(odd)! + Int(even)!
}