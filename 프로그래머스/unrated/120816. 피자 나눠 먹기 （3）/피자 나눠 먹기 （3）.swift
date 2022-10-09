import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    var answer = 1
    while slice * answer < n {
        answer += 1
    }
    return answer
}