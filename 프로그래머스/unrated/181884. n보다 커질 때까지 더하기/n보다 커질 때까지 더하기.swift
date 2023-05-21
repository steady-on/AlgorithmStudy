import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int { numbers.reduce(0) { $0 <= n ? $0 + $1 : $0 } }