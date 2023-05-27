import Foundation

func solution(_ strArr:[String]) -> Int { Dictionary(grouping: strArr, by: { $0.count }).values.map { $0.count }.max()! }