import Foundation

// let n = Int(readLine()!)!

// for i in 1...n {
//     print(String(repeating: "*", count: i))
// }

(1...Int(readLine()!)!).forEach {print(String(repeating: "*", count: $0))}