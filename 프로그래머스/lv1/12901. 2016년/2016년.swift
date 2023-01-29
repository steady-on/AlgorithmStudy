func solution(_ a:Int, _ b:Int) -> String {
    let days: [Int] = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let wkd: [String] = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]

    return wkd[days[1..<a].reduce(b, +) % 7]
}