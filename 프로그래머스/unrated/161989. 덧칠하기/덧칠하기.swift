import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var wall = Dictionary(uniqueKeysWithValues: zip(section, Array(repeating: true, count: section.count)))
    var count = 0
    
    for start in section {
        guard wall[start] != nil else { continue }
        
        for num in start..<(start+m) where wall[num] != nil {
            wall[num] = nil
        }
        
        count += 1
    }
    
    return count
}