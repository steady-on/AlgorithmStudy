import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let sortedGenres = sortGenres(genres, plays)
    let groupedGenres = groupGenres(genres, plays)
    
    var bestAlbum = [Int]() 

    for genre in sortedGenres {
        guard let songs = groupedGenres[genre] else { break }
        
        guard songs.count >= 2 else {
            bestAlbum += songs
            continue
        }
        
        bestAlbum += Array(songs[..<2])
    }
    
    return bestAlbum
}

func sortGenres(_ genres:[String], _ plays:[Int]) -> [String] {
    var genrePlayDic = [String:Int]()
    
    for (genre, play) in zip(genres, plays) {
        genrePlayDic[genre, default: 0] += play
    }
        
    return genrePlayDic.sorted { $0.value > $1.value }.map { $0.key }
}

func groupGenres(_ genres:[String], _ plays:[Int]) -> [String:[Int]] {
    var genreIndexDic = [String:[Int]]()
    
    for (genre, index) in zip(genres, genres.indices) {
        genreIndexDic[genre, default: [Int]()].append(index)
    }
    
    genreIndexDic = genreIndexDic.mapValues { $0.sorted { plays[$0] > plays[$1] } }
    
    return genreIndexDic
}