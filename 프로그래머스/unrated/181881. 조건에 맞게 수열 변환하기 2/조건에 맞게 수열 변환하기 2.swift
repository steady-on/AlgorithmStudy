import Foundation

func solution(_ arr:[Int]) -> Int {
    var arr = arr
    var temp = arr
    var x = 0
    
    while true {
        temp = temp.map { x in
            if x >= 50, x % 2 == 0 { return x / 2 } 
            else if x < 50, x % 2 == 1 { return x * 2 + 1 }
            else { return x }
        }
        
        if temp == arr {
            return x
        } else {
            x += 1
            arr = temp
        }
    }
    
    return x
}