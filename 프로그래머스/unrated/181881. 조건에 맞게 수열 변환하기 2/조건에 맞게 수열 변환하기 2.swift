import Foundation

func solution(_ arr:[Int]) -> Int {
    var before = [Int]()
    var after = arr
    var x = -1
    
    while before != after {
        before = after
        
        x += 1
        
        after = after.map { x in
            if x >= 50, x % 2 == 0 { return x / 2 } 
            else if x < 50, x % 2 == 1 { return x * 2 + 1 }
            else { return x }
        } 
    }
    
    return x
}