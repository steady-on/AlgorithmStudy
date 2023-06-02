import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var wrap = [Int]()
    var count = 0
    
    for ing in ingredient {
        wrap += [ing]
        
        let length = wrap.count
        if length >= 4 && wrap[(length-4)...(length-1)] == [1, 2, 3, 1] {
            count += 1
            wrap = Array(wrap[..<(wrap.count-4)])
        }
    }
    
    return count
}