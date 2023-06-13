func solution(_ s:String) -> String {
    let sInt = s.split(separator: " ").compactMap { Int($0) }.sorted()
    return "\(sInt[0]) \(sInt[sInt.endIndex - 1])"
}