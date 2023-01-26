let _ = readLine()
let A = Set(readLine()!.split(separator: " "))
let _ = readLine()
let B = readLine()!.split(separator: " ")

for num in B {
    if A.contains(num) {
        print(1)
    } else {
        print(0)
    }
}