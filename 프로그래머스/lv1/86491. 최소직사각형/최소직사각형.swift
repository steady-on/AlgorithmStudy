import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sizes: [[Int]] = sizes.map { $0.sorted(by: <) }
    let width: Int = sizes.map { $0[0] }.max() ?? 0
    let height: Int = sizes.map { $0[1] }.max() ?? 0
    
    return width * height
}