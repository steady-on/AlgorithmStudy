func solution(_ s:String) -> String {
    var s = s.components(separatedBy: " ").map {Array($0).map {String($0)}}
    for i in 0..<s.count {
        for j in 0..<s[i].count {
            j % 2 == 0 ? (s[i][j] = s[i][j].uppercased()) : (s[i][j] = s[i][j].lowercased())
            }
        }
    return s.map {$0.joined()}.joined(separator: " ")
}