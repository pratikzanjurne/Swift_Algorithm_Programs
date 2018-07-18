/*
 *  Purpose - Question to find your number.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   18-07-2018
 */
import Foundation
print("Enter any number that must be power of two.")
if let number = readLine(){
    if let number = Int(number){
        print("Think any number between 0 to \(number).")
        let u = FindNumber()
        u.getNumber(number:number)
    }else{
        print("Enter an Integre value.")
    }
}

