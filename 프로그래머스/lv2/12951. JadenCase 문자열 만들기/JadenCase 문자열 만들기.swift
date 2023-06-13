func solution(_ s:String) -> String {
    var parts = s.components(separatedBy: " ")
    
    for index in parts.indices {
        if let first = parts[index].first, first.isNumber {
            parts[index] = parts[index].lowercased()
        } else {
            parts[index] = parts[index].capitalized
        }
    }
    
    return parts.joined(separator: " ")
}