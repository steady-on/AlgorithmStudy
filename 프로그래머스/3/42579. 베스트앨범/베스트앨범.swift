import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let groupedGenres = groupSum(genres, plays)
    let sortedSum = groupedGenres.sorted { $0.sum > $1.sum }
    
    var bestAlbum = [Int]()
    
    for (_, songs) in sortedSum {
        let sortedSongs = songs.sorted { plays[$0] > plays[$1] }
        bestAlbum += sortedSongs.prefix(2)
    }
    
    return bestAlbum
}

func groupSum(_ genres:[String], _ plays:[Int]) -> [(sum:Int, songs:[Int])] {
    var groupedSum = [String:(sum:Int, songs:[Int])]()
    
    for (index, genre) in genres.enumerated() {
        groupedSum[genre, default: (sum: 0, songs: [Int]())].sum += plays[index]
        groupedSum[genre, default: (sum: 0, songs: [Int]())].songs.append(index)
    }
    
    return Array(groupedSum.values)
}