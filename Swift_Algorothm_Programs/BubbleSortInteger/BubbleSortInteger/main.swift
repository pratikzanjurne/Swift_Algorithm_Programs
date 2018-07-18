/*
 *  Purpose - Bubble sort of integaers.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   18-07-2018
 */
import Foundation
var u = BubbleSortInteger()
print("Enter the Integer array size.")
if let size = readLine(){
    if let size = Int(size){
        var integerArray = [Int]()
        integerArray = u.getIntegerArray(size: size)
        u.doBubbleSortInteger(integerArray:integerArray,size:size)
    }else{
        print("Enter an Integer value.")
    }
}
