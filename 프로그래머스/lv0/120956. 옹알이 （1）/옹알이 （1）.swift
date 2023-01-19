import Foundation

func solution(_ babbling:[String]) -> Int {
    var result: [String] = []
    
    for babble in babbling {
        var temp = babble
        for word in ["aya", "ye", "woo", "ma"] {
            temp = temp.replacingOccurrences(of: word, with: "1")
        }
        result.append(temp)
    }
    
    return result.compactMap { Int($0) }.count
}