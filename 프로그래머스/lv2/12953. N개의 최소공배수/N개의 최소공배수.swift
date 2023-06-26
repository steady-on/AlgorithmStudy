func solution(_ arr:[Int]) -> Int {
    var lcm = -1
    var gcd = 0
    
    for num in arr {
        guard lcm > 0 else {
            lcm = num
            continue
        }
        
        gcd = euclidean(lcm, num)
        lcm = (lcm * num) / gcd
    }
    
    return lcm
}

func euclidean(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    
    while b != 0 {
        (a, b) = (b, a % b)
    }
    
    return a
}