import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let result = rank.enumerated().filter { attendance[$0.offset] }.sorted { $0.element < $1.element }
    
    return 10000 * result[0].offset + 100 * result[1].offset + result[2].offset
}