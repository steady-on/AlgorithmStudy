func solution(_ s:String) -> String {
    var arr = Array(s)
    return (s.count % 2 == 1) ? String(arr[s.count/2]) : String(arr[(s.count/2-1)...s.count/2])
}
