func fibonacci(_ n: Int) -> Int {
    let divide = 1234567
    var fibonacciNumbers: [Int] = Array(repeating: 1, count: n)
    
    for index in 1..<(n - 1) {
        fibonacciNumbers[index + 1] = (fibonacciNumbers[index] % divide + fibonacciNumbers[index - 1] % divide) % divide
    }

    return fibonacciNumbers.last!
}

func solution(_ n: Int) -> Int { fibonacci(n) }