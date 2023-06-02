import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var wrap = [Int]()
    var stackCount = 0
    var count = 0
    
    for ing in ingredient {
        if wrap.isEmpty && ing != 1 { continue }
        
        wrap.append(ing)
        stackCount += 1
        
        if stackCount >= 4 {
            let suffix = wrap.suffix(4)
            if suffix == [1, 2, 3, 1] { 
                wrap.removeLast(4) 
                count += 1
                stackCount -= 4
            }
        }
    }
    
    return count
}