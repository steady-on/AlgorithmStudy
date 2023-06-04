func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for (first, second) in zip(arr1, arr2) {
        let binary = Int(String(first | second, radix: 2))!
        let formatedBinary = String(format: "%0\(n)ld", binary)
        let conversion = formatedBinary.replacingOccurrences(of: "1", with: "#").replacingOccurrences(of: "0", with: " ")
        
        answer.append(conversion)        
    }
    
    return answer
}