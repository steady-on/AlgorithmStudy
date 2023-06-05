func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    let cities = cities.map { $0.lowercased() }
    var cache = [String]()
    var runTime = 0
    
    for city in cities {
        guard cache.contains(city) == false else {
            runTime += 1
            if let index = cache.firstIndex(of: city) {
                cache.remove(at: index)
            }
            cache.append(city)
            continue
        }
        
        cache.append(city)
        runTime += 5
        
        if cache.count > cacheSize {
            cache.removeFirst()
        }
    }
    
    return runTime
}