import Foundation

func solution(_ n:Int) -> Int {
    return (n / 7 + (n % 7 > 0 ? 1 : 0))
}