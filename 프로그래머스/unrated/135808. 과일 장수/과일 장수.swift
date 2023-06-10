import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var sortedScore = score.sorted(by: >)
    var profit = 0
    
    for index in stride(from: m-1, to: sortedScore.count, by: m) {
        profit += sortedScore[index] * m
    }
    
    return profit
}