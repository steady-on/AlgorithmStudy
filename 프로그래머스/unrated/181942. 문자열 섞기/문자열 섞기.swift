import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result: String = ""
    for (one, two) in zip(str1, str2) {
        result.append(one)
        result.append(two)
    }
    return result
}