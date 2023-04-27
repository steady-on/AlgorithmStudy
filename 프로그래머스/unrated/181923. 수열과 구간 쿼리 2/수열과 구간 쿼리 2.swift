import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for query in queries {
        let temp = arr[query[0]...query[1]].filter { $0 > query[2] }
        result.append(temp.min() ?? -1)
    }
    
    return result
}