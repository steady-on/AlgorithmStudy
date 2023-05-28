import Foundation

func solution(_ nStr:String) -> String { 
    var nStr = nStr
    
    while nStr.hasPrefix("0") {
        nStr.removeFirst()
    }
    
    return nStr
}