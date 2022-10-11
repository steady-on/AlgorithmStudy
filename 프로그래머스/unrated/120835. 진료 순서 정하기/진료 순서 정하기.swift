import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var answer: [Int] = Array(repeating: 0, count: emergency.count)
    for (p, n) in zip(emergency.sorted(by:>), 1...emergency.count) {
        answer[emergency.firstIndex(of: p)!] = n
    }
    return answer
}