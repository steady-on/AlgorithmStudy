func solution(_ num:Int) -> Int {
    var num: Int = num
    var cnt: Int = 0
    
    while (num != 1 && cnt < 500) {
        cnt += 1
        (num % 2 == 1) ? (num = num * 3 + 1) : (num = num / 2)
    }
    return cnt >= 500 ? -1 : cnt
}