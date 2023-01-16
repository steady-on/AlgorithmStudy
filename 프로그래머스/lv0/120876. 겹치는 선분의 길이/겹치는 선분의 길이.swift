import Foundation

func solution(_ lines:[[Int]]) -> Int {
    let a: Set<Int> = Set(lines[0][0]..<lines[0][1])
    let b: Set<Int> = Set(lines[1][0]..<lines[1][1])
    let c: Set<Int> = Set(lines[2][0]..<lines[2][1])
    
    var ab: Set<Int> = a.intersection(b)
    var bc: Set<Int> = b.intersection(c)
    var ac: Set<Int> = a.intersection(c)
    
    let result = ab.union(bc).union(ac)

    return result.count
}