import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let (s, e) = (query[0], query[1])
        arr.replaceSubrange(s...e, with: arr[s...e].map { $0 + 1 })
    }
    
    return arr
}