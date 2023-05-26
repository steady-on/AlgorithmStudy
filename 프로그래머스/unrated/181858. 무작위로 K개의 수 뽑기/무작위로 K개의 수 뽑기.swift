import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result = Array(repeating: -1, count: k)
    result[0] = arr[0]
    
    var index = 1
    for element in arr[1...] where !result.contains(element) && index < k {
        result[index] = element
        index += 1
    }
    
    return result
}