import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var landables = reserve.filter { lost.contains($0) == false }.sorted()
    var realLost = lost.filter { reserve.contains($0) == false }
    
    for student in landables {
        if let before = realLost.firstIndex(of: student - 1) {
            realLost.remove(at: before)
            continue
        }
        
        if let after = realLost.firstIndex(of: student + 1) {
            realLost.remove(at: after)
        }
    }
    
    return n - realLost.count
}