import Foundation

let s1 = readLine()!

for s in s1 {
    if s.isUppercase {
        print(s.lowercased(), terminator: "")
    } else {
        print(s.uppercased(), terminator: "")
    }
}