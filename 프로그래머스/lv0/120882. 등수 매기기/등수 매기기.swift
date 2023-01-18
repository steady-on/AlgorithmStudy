import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let totalScore: [Int] = score.map { $0.reduce(0, +) }
    let sortedScore: [Int] = totalScore.sorted(by: >)
    
    return totalScore.map { sortedScore.firstIndex(of:$0)! + 1 }
}