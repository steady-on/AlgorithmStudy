func solution(_ arr:[Int]) -> [Int] { 
    guard arr.count != 1 else { return [-1] }
    
    var arr = arr
    
    if let min = arr.min(), let index = arr.firstIndex(of: min) {
        arr.remove(at: index)
    }
    
    return arr
}