/*
 *  Purpose - To calclulate Square Root.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   19-07-2018
 */
import Foundation
let u = BinaryConversion()
print("Enter the number to conver into binary.")
if let number = readLine(){
    if let number = Int(number){
        var binaryNumber = u.toBinary(number: number)
        print(binaryNumber)
    }else{
        print("Enter the valid integer number.")
    }
}
