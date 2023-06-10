import Foundation

func countArrivals(_ n:Int, _ stages: [Int]) -> [Int] {
    var arrivals = Array(repeating: 0, count: n+2)
    
    for stage in stages { arrivals[stage] += 1 }
    
    return arrivals
}

func countClears(_ n:Int, _ arrivals: [Int]) -> [Int] {
    var clears = Array(repeating: 0, count: n+2)
    
    clears[n+1] = arrivals[n+1]

    for stage in stride(from: n, to: 0, by: -1) {
        clears[stage] = clears[stage+1] + arrivals[stage]    
    }
    
    return clears
}

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    let arrivals = countArrivals(N, stages)
    let clears = countClears(N, arrivals)
    var failureRates = zip(arrivals, clears).map { a, c in c == 0 ? 0 : Double(a)/Double(c) }
    
    failureRates.removeFirst()
    failureRates.removeLast()
    
    let result = zip(1...N, failureRates).sorted { $0.1 > $1.1 }.map { $0.0 }
    
    return result
}