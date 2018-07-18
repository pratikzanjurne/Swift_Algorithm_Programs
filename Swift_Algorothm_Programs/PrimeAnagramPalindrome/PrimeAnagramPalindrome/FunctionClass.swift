import Foundation
class FunctionClass{
    var prime:Int = 0
    var i:Int = 1
    func findPrimes(number: Int)->Int{
        prime = number
        for index in 2...prime{
            i = index
            if prime % index == 0{
                break
            }
        }
        if prime == i{
            return prime
        }
        return 0
    }
    
    func findAnagrams(allPrimes:[Int]) -> [Int] {
        var anagrams = [Int]()
        var anagram:Int = 0
        for index in 0...allPrimes.count-1{
            for index1 in 0...allPrimes.count-1{
            var number1 = "\(allPrimes[index])"
                let number2 = "\(allPrimes[index1])"
            if number1.count == number2.count{
                if number1.sorted()==number2.sorted() && index != index1{
                    anagrams.append(allPrimes[index])
                }
            }
        }
    }
            anagrams = Array(Set(anagrams))
        return anagrams.sorted()
    }
    
    func findPalindromes(allPrimes: [Int]) -> [Int] {
        var palindrome = [Int]()
        for index in 0..<allPrimes.count-1{
            var number1 = "\(allPrimes[index])"
                if number1.characters.first == number1.characters.last{
                    palindrome.append(allPrimes[index])
                }
        }
        return palindrome
    }
}

