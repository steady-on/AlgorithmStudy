import Foundation

func solution(_ numList:[Int]) -> Int {
    var odd: String = ""
    var even: String = ""
    
    numList.forEach {
        if $0 % 2 == 0 {
            even += String($0)
        } else {
            odd += String($0)
        }
    }
    
    return Int(odd)! + Int(even)!
}