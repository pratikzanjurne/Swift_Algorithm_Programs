/*
 *  Purpose - Insertion sort to the String.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   18-07-2018
 */
import Foundation
let u = InsertionSort()
print("Enter the size of your string for the insertion sort.")
if let size = readLine(){
    if let size = Int(size){
        print("Enter the string of size \(size)")
        var input = [String]()
        input = u.getStringArray(size: size)
        u.doInsertionSortString(stringArray:input,size:size)
    }else{
        print("Enter the size in Integer value.")
    }
}

