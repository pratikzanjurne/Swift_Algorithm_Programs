import Foundation
class Primes{
    var number:Int = 0
    var i:Int = 1
    func findPrimes(number: Int)->Int{
        self.number = number
        for index in 2...number{
            i = index
            if number % index == 0{
                break
            }
        }
        if number == i{
            return i
        }
        return 0
    }
}
