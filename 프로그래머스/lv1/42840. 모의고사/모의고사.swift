import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let students: [Int:[Int]] = [
        1 : [1, 2, 3, 4, 5],
        2 : [2, 1, 2, 3, 2, 4, 2, 5],
        3 : [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    var results: [Int] = [0, 0, 0]

    for (index, value) in answers.enumerated() {
        for (student, answer) in students {
            if value == answer[index % answer.count] {
                results[student - 1] += 1
            }
        }
    }
    
    return (1...3).filter { results[$0 - 1] == results.max() }
}