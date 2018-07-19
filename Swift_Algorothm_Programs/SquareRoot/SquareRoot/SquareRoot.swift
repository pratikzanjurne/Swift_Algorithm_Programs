import Foundation
class SquareRoot{
    func sqrt(c:Int) -> Int {
        var t:Int = c
        while Int(1e-15) * t < abs(t-c/t) {
            t = ( c/t + t )/2
        }
        return t
    }
}
