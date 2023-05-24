import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var myString = myString
    
    while myString.hasSuffix(pat) == false {
        myString.removeLast()
    }
    
    return myString
}