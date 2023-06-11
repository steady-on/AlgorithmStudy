import Foundation

func convertString(_ date: String) -> Int {
    let parts = date.components(separatedBy: ".").compactMap { Int($0) }
    let days = (parts[0] * 12 * 28) + (parts[1] * 28) + parts[2]
    
    return days
}

func calcutatePeriod(_ terms: [String]) -> [String:Int] {
    var periods = [String:Int]()
    
    for term in terms {
        let parts = term.components(separatedBy: " ")
        periods[parts[0]] = Int(parts[1])! * 28
    }
    
    return periods
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let periodsOfTerms = calcutatePeriod(terms)
    let daysOfToday = convertString(today)
    var expired = [Int]()
    
    for (num, privacy) in zip(1..., privacies) {
        let parts = privacy.components(separatedBy: " ")
        let (term, days) = (parts[1], convertString(parts[0]))
        let expireDay = days + periodsOfTerms[term]!

        if expireDay <= daysOfToday { expired.append(num) }
    }
    
    return expired
}