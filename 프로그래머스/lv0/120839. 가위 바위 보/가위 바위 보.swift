import Foundation

func solution(_ rsp:String) -> String {
    let lspDict: [Character:String] = ["2":"0", "0":"5", "5":"2"]
    var answer: String = ""

    rsp.forEach { answer += lspDict[$0]! }

    return answer
}