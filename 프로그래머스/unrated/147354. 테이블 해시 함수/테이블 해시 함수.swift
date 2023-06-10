import Foundation

func sortData(_ data: [[Int]], _ col: Int) -> [[Int]] {
    return data.sorted { $0[col-1] == $1[col-1] ? $0[0] > $1[0] : $0[col-1] < $1[col-1] }
}

func calculateS(_ data: [[Int]]) -> [Int] {
    var result =  [Int]()
    
    for (index, tuple) in data.enumerated() {
        var sum = 0
        
        for element in tuple {
            sum += element % (index+1)
        }
        
        result.append(sum)
    }
    
    return result
}

func hash(_ data: [Int]) -> Int {
    var result = data[0]

    for i in 1..<data.count {
        result = result ^ data[i]
    }
    
    return result
}

func solution(_ data:[[Int]], _ col:Int, _ rowBegin:Int, _ rowEnd:Int) -> Int {
    let sortedData = sortData(data, col)
    let s = calculateS(sortedData)
    let hashValue = hash(Array(s[(rowBegin-1)...(rowEnd-1)]))

    return hashValue
}