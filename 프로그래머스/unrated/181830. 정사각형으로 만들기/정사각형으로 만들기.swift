import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let size = max(arr.count, arr.map { $0.count }.max()!)
    var arr = arr
    
    for col in arr.indices {
        while arr[col].count < size { arr[col].append(0) }
    }
    
    while arr.count < size {
        arr.append(Array(repeating: 0, count: size))
    }
    
    return arr
}