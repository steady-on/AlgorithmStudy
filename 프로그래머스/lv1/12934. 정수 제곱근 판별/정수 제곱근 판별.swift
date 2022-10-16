func solution(_ n:Int64) -> Int64 {
    let square: Double = Double(n).squareRoot()
    return square > Double(Int(square)) ? Int64(-1) : Int64((square+1)*(square+1) )
}