/*
 *  Purpose - To print the Prime numbers from 0-1000.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   12-07-2018
 */
import Foundation
var result:Int
let u = Primes()
print("Prime numbers from 0-1000 are :")
for index in 2...1000{
    result = u.findPrimes(number:index)
    if result != 0{
        print(result)
    }
}

