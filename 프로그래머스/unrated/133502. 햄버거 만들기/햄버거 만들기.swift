import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var wrap = [Int]()
    var count = 0
    
    for ing in ingredient {
        wrap += [ing]
        
        let suffix = wrap.suffix(4)
        if suffix == [1, 2, 3, 1] {
            count += 1
            wrap.removeLast(4)
        }
    }
    
    return count
}