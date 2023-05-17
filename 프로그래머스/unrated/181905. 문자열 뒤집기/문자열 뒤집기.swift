import Foundation

func solution(_ myString:String, _ s:Int, _ e:Int) -> String {
    var temp = Array(myString)
    temp.replaceSubrange(s...e, with: temp[s...e].reversed())
    return String(temp)
}