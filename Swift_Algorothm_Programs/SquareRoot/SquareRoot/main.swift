/*
 *  Purpose - To calclulate Square Root.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   19-07-2018
 */
import Foundation
let u = SquareRoot()
print("Enter the number to calculate Square root.")
if let c = readLine(){
    if let c = Int(c){
        let squareroot = u.sqrt(c: c)
        print(squareroot)
    }else{
        print("Enter a non negative Integer.")
    }
}
