func solution(_ arr:[Int]) -> [Int] { 
    let min: Int = arr.min() ?? 1
    return arr.count == 1 ? [-1] : arr.filter { $0 != min }
}