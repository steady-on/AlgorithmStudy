import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if let first = arr.firstIndex(of: 2), let last = arr.lastIndex(of: 2) {
        return Array(arr[first...last])
    }
    
    return [-1]
}