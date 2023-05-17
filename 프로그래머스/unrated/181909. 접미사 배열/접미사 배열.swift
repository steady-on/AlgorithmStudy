import Foundation

func solution(_ myString:String) -> [String] {
    var result = [String]()
    
    for index in myString.indices {
        let temp = String(myString.suffix(from: index))
        result.append(temp)
    }
    
    return result.sorted()
}