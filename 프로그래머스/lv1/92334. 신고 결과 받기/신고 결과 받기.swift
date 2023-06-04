import Foundation

func solution(_ idList:[String], _ report:[String], _ k:Int) -> [Int] {
    var mailCounts = idList.map { (reporter: $0, count: 0) }
    
    let reportTuples: [(String, String)] = report.map { str in 
                let split = str.components(separatedBy: " ")
                return (split[0], split[1])
                }
    let blocks = Dictionary(grouping: reportTuples, by: { $0.1 }).mapValues { Set($0.map { $0.0 }) }.filter { $1.count >= k }
    
    for (_, reporter) in blocks {
        reporter.forEach { 
            mailCounts[idList.firstIndex(of: $0)!].1 += 1
        }
    }
    
    return mailCounts.map { $0.count }
}