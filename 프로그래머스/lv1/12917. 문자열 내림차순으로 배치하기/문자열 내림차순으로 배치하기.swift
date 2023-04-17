func solution(_ s:String) -> String {
    String(Array(s).sorted { $0.asciiValue! > $1.asciiValue! })
}