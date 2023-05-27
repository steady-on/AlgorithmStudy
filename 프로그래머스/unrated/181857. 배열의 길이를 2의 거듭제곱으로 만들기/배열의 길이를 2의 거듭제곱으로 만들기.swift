import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let num = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024] 
    
    var arr = arr
    
    while !num.contains(arr.count) {
        arr.append(0)
    }
    
    return arr
}