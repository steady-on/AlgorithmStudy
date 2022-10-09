import Foundation

func solution(_ n:Int) -> Int {
    // n과 6의 최대공약수로 n을 나눈 값을 리턴
    let div: [Int] = [6,3,2,1].filter {n % $0 == 0}
    return (n / div[0])
}