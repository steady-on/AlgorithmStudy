import Foundation

func solution(_ s:String) -> Bool { 
    let s = s.uppercased()
    return (s.components(separatedBy: "P").count == s.components(separatedBy: "Y").count)
}