import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var wrap = [Int]()
    var stackCount = 0
    var count = 0
    
    for ing in ingredient {
        if wrap.isEmpty && ing != 1 { continue }
         
        if ing == 1 && stackCount >= 3 {
            let suffix = wrap.suffix(3)
            if suffix == [1,2,3] { 
                wrap.removeLast(3) 
                count += 1
                stackCount -= 3
                continue
            }
        }
        
        wrap.append(ing)
        stackCount += 1
    }
    
    return count
}