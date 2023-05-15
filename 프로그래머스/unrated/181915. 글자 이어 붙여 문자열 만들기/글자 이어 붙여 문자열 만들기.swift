import Foundation

func solution(_ myString:String, _ indexList:[Int]) -> String {
    let myStringArr = Array(myString).map { String($0) }
    var result = ""
    
    for index in indexList{
        result += myStringArr[index]
    }
    
    return result
}