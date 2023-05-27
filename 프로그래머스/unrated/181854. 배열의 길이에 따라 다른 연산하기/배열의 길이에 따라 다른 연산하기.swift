import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var arr = arr
    
    if arr.count % 2 == 1 {
        for index in arr.indices where index % 2 == 0 {
            arr[index] += n
        }
    } else {
        for index in arr.indices where index % 2 == 1 {
            arr[index] += n
        }
    }
    
    return arr
}