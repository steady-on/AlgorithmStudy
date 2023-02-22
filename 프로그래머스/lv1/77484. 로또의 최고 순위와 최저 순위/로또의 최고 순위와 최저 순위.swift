import Foundation

func solution(_ lottos:[Int], _ winNums:[Int]) -> [Int] {
    let same: Int = winNums.filter { lottos.contains($0) }.count
    let zero: Int = lottos.filter { $0 == 0 }.count
        
    return [min(6, 7 - (same + zero)), min(6, 7 - same)]
}