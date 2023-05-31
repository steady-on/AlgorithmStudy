import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var count = 0
    let pInt = Int(p)!
    
    guard p.count != 1 else {
        for num in Array(t).compactMap({ Int(String($0)) }) where num <= pInt { count += 1 }
        return count
    }
    
    for index in t.indices {
        guard let close = t.index(index, offsetBy: p.count, limitedBy: t.endIndex) else { break }
        if let sub = Int(String(t[index..<close])), sub <= pInt { count += 1 }
    }
    
    return count
}