func isPrime(_ n: Int) -> Bool {
    guard n != 2 && n != 3 else { return true }
    
    let root = Int(Double(n).squareRoot())

    for i in 2...root where n % i == 0 {
        return false
    }
    
    return true
}

func solution(_ n:Int) -> Int {
    var count = 0
    
    for num in 2...n where isPrime(num) {
        count += 1
    }
    
    return count
}