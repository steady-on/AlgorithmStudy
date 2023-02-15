import Foundation

func solution(_ myString:String) -> Int { //"3 + 4"
    let myStrings = myString.components(separatedBy: " ")
    var result: Int = Int(myStrings[0])!
    
    // 홀수번째는 연산자, 짝수번째는 숫자
    // +- myStrings[i+1]
    var idx: Int = 1
    while idx < myStrings.count {
        if myStrings[idx] == "+"  {
            result += Int(myStrings[idx+1])!
        } else {
            result -= Int(myStrings[idx+1])!
        }
        idx += 2
    }

    return result
}
