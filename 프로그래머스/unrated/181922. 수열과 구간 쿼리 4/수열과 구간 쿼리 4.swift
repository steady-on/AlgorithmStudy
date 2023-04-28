import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        for i in s...e {
            if i % k == 0 {
                arr[i] += 1
            }
        }
    }
     
    return arr
}