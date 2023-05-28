import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int { 
    guard date1[0] == date2[0] else {
        return date1[0] < date2[0] ? 1 : 0
    }
    
    guard date1[1] == date2[1] else {
        return date1[1] < date2[1] ? 1 : 0
    }
    
    return date1[2] < date2[2] ? 1 : 0
}