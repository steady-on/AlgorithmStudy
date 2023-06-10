import Foundation

func solution(_ babbling:[String]) -> Int {
    let babbles = ["aya", "ye", "woo", "ma"]
    var convert = [String]()
    
    for word in babbling {
        var temp = word

        for (num, babble) in babbles.enumerated() {
            temp = temp.replacingOccurrences(of: babble, with: "\(num)")
        }
        
        convert.append(temp)
    }
    
    let result = convert.filter { !$0.contains("00") && !$0.contains("11") && !$0.contains("22") && !$0.contains("33") }
    
    return result.compactMap { Int($0) }.count
}