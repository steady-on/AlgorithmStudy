import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one: [Int] = [1, 2, 3, 4, 5]
    let two: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let three: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    let students:[[Int]] = [one, two, three]
    
    var results: [Int] = [0, 0, 0]

    for index in answers.indices {
        for jndex in students.indices {
            let student = students[jndex]
            if answers[index] == student[index % student.count] {
                results[jndex] += 1
            }
        }
    }
    
    return (1...3).filter { results[$0 - 1] == results.max() }
}