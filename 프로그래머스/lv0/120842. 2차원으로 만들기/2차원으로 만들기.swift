import Foundation

func solution(_ numList:[Int], _ n:Int) -> [[Int]] {
    var answer: [[Int]] = []
    
    var i: Int = 0
    while i < numList.count {
        let temp = Array(numList[i..<(i+n)])
        answer.append(temp)
        i += n
    }
    return answer
}