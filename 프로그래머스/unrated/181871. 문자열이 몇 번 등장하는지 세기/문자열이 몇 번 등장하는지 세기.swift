import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var myString = myString
    var count = 0
    
    while myString != "" {
        if myString.hasPrefix(pat) { count += 1 }
        myString.removeFirst()
    }
    
    return count
}