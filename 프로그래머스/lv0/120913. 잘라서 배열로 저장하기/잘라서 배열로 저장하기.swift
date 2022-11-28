import Foundation

func solution(_ myStr:String, _ n:Int) -> [String] {
    var result: [String] = []
    var temp: String = ""
    
    for char in myStr {
        temp.append(char)
        if temp.count == n {
            result.append(temp)
            temp = ""
        }
    }
    
    if !temp.isEmpty {
        result.append(temp)
    }
    
    return result
}