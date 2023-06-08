func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    let cities = cities.map { $0.lowercased() }
    var cache = [String]()
    var runTime = 0
    
    for city in cities {
        guard cache.contains(city) == false else {
            runTime += 1
            cache.remove(at: cache.firstIndex(of: city)!)
            cache.append(city)
            continue
        }
        
        cache.append(city)
        runTime += 5
        
        if cache.count > cacheSize { cache.removeFirst() }
    }
    
    return runTime
}