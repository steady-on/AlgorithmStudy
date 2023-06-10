import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var sortedScore = score.sorted()
    var profit = 0
    
    var index = sortedScore.count
    while index >= m {
        let box = Array(sortedScore[(index-m) ..< index])
        profit += box[0] * m
        index -= m
    }
    
    return profit
}