import Foundation

func getNumberOfCases(_ nums: [Int]) -> [Int] {
    var numberOfCased = [Int]()
    
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            for k in (j+1)..<nums.count {
                numberOfCased.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    return numberOfCased
}

//무조건 2이상만 들어올 예정이므로 예외처리 필요없음
func judgePrimeNumber(_ num: Int) -> Bool {
    for i in 2...Int(Double(num).squareRoot()) where num % i == 0 {
        return false
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    let numberOfCased = getNumberOfCases(nums)
    var count = 0    

    for num in numberOfCased where judgePrimeNumber(num) {
        count += 1
    }

    return count
}