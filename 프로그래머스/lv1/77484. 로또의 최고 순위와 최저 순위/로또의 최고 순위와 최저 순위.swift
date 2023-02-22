import Foundation

func solution(_ lottos:[Int], _ winNums:[Int]) -> [Int] {
    let same: Int = winNums.filter { lottos.contains($0) }.count
    let zero: Int = lottos.filter { $0 == 0 }.count
        
    return [same + zero == 0 ? 6 : 7 - (same + zero), same == 0 ? 6 : 7 - same ]
}