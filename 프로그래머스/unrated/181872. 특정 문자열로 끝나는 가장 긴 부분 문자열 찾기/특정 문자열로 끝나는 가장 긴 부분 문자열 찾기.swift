import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var myString = myString
    
    while myString != "" {
        if myString.hasSuffix(pat) { break }
        
        myString.removeLast()
    }
    
    return myString
}