import Foundation

func countDivider(_ n: Int) -> Int {
    guard n != 1 else { return 1 }
    
    let root = Int(Double(n).squareRoot())
    var divider = Set<Int>()
    
    for i in 1...root where n % i == 0 {
        divider.insert(i)
        divider.insert(n/i)
    }

    return divider.count
}

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    let needsCount = (1...number).map { countDivider($0) }
    var count = 0
    
    for need in needsCount {
        if need <= limit {
            count += need
        } else {
            count += power
        }
    }
    
    return count
}