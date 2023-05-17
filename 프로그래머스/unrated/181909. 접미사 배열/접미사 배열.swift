import Foundation

func solution(_ myString:String) -> [String] {
    var result = [String]()
    
    for index in myString.indices {
        let temp = String(myString[index...])
        result.append(temp)
    }
    
    return result.sorted()
}