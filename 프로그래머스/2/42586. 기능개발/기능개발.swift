import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var works = zip(progresses, speeds).map { Int(ceil(Double(100 - $0) / Double($1))) }
    
    var result = [Int]()
    var count = 1
    var release = works.removeFirst()
    
    while works.isEmpty == false {
        let work = works.removeFirst()
          
        guard work > release else {
            count += 1
            continue
        } 
        
        result.append(count)
        count = 1
        release = work
    }
    
    result.append(count)
    
    return result
}