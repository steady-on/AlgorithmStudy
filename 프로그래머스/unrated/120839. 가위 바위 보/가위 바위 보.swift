import Foundation

func solution(_ rsp:String) -> String {
    let lspDict: [Character:String] = ["2":"0", "0":"5", "5":"2"]
    var answer: String = ""

    for s in rsp {
        if let key = lspDict[s] {
            answer += key
        }
        // answer += lspDict[s]!
    }
    return answer
}