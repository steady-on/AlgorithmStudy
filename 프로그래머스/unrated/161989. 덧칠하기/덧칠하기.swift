import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var rePaintedWall = section
    var end = 0
    var count = 0
    
    for start in section {
        guard start >= end else { continue }
        
        end = start + m
        count += 1
    }
    
    return count
}