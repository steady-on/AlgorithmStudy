import Foundation

func solution(_ myString:String, _ indices:[Int]) -> String {
    var result = Array(myString)
    
    indices.forEach { result[$0] = "_" }
    
    return String(result.filter { $0 != "_" })
}