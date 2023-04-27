import Foundation

func solution(_ code:String) -> String {
    var mode: Bool = false
    var ret: String = ""
    
    for (index, char) in code.enumerated() {
        if char == "1" { 
            mode.toggle() 
            continue
        }
        
        if mode {
            if index % 2 == 1 {
                ret.append(char)
            }
        } else {
            if index % 2 == 0 {
                ret.append(char)
            }
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}