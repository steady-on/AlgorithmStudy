import Foundation

let _ = readLine()
let A = Set(readLine()!.components(separatedBy: " "))
let _ = readLine()
let B = readLine()!.components(separatedBy: " ")

for num in B {
    if A.contains(num) {
        print(1)
    } else {
        print(0)
    }
}