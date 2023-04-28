import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        (s...e).forEach { if $0 % k == 0 { arr[$0] += 1 } }
    }
     
    return arr
}