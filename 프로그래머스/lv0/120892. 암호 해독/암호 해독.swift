import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result:String = ""
    var cipher = Array(cipher)
    
    for i in cipher.indices {
        if (i + 1) % code == 0 {
            result.append(cipher[i])
        }
    }

    return result
}