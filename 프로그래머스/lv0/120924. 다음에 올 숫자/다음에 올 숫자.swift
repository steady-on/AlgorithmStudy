import Foundation

func solution(_ common:[Int]) -> Int {
    guard let last = common.last else { return 0 }
    
    if common[0] - common[1] == common[1] - common[2] {
        return last + common[1] - common[0]
    } else {
        return last * common[1] / common[0]
    }
}