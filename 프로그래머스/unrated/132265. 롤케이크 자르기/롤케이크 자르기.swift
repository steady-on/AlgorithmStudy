import Foundation

func solution(_ topping:[Int]) -> Int {
    var toppingDict = Dictionary(grouping: topping, by: { $0 }).mapValues { $0.count }
    var toppingCount: Int { toppingDict.keys.count }
    var aniki = topping
    var otouto = Set<Int>()
    var otoutoCount = 0
    
    var countOfCase = 0
    
    while aniki.count > 1 {
        let last = aniki.removeLast()
        
        if toppingDict[last]! > 1 {
            toppingDict[last]! -= 1
        } else {
            toppingDict[last] = nil
        }
        
        if otouto.update(with: last) == nil {
            otoutoCount += 1
        }
        
        if toppingCount == otoutoCount {
            countOfCase += 1
        }
    }

    
    return countOfCase
}