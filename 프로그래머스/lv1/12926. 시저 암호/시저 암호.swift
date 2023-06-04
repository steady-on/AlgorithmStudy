func solution(_ str:String, _ n:Int) -> String {
    let upper = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lower = Array("abcdefghijklmnopqrstuvwxyz")
    
    var result: String = ""
    
    for char in str {
        if char.isLowercase {
            let index = lower.firstIndex(of: char)!
            result.append(lower[(index+n) % 26])
        } else if char.isUppercase {
            let index = upper.firstIndex(of: char)!
            result.append(upper[(index+n) % 26])
        } else {
            result.append(" ")
        }
    } 
    
    return result
}