import Foundation

func solution(_ a: [Int], _ b: [Int]) -> Int {
    let aSorted = a.sorted()
    let bSorted = b.sorted(by: >)
    var ans = 0

    for (a, b) in zip(aSorted, bSorted) {
        ans += a * b
    }

    return ans
}