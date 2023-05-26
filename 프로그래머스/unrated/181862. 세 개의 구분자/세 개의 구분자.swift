import Foundation

func solution(_ myStr:String) -> [String] {
    let myStrArr = myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
    return myStrArr.isEmpty ? ["EMPTY"] : myStrArr
}