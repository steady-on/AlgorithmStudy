import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var landables = Set(reserve)
    var realLost = Set(lost)
    
    landables.subtract(lost)
    realLost.subtract(reserve)
    
    for student in landables.sorted() {
        if realLost.contains(student - 1) {
            realLost.remove(student - 1)
            continue
        }
        
        if realLost.contains(student + 1) {
            realLost.remove(student + 1)
        }
    }
    
    return n - realLost.count
}