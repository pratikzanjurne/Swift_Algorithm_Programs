/*
 *  Purpose - Determine the prime numbers that are Anagram and Palindroem.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   12-07-2018
 */
import Foundation
var allPrimes = [Int]()
var allAnagrams = [Int]()
var allPalindromes = [Int]()
var u = FunctionClass()
print("Prime numbers that are anagram are : ")
for index in 2...1000{
    if u.findPrimes(number: index) != 0{
    allPrimes.append(u.findPrimes(number:index))
    }
}
allAnagrams = u.findAnagrams(allPrimes: allPrimes)
print(allAnagrams)
print("Prime numbers that are Palindromes are : ")
allPalindromes = u.findPalindromes(allPrimes: allPrimes)
print(allPalindromes)
