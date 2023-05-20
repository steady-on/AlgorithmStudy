import Foundation

func solution(_ strList:[String]) -> [String] {
    let lIndex = strList.firstIndex(of: "l") ?? 21
    let rIndex = strList.firstIndex(of: "r") ?? 21

    guard lIndex != rIndex else { return [] }
    
    if lIndex < rIndex {
        return Array(strList[..<lIndex])
    } else {
        return Array(strList[strList.index(after: rIndex)...])
    }
}