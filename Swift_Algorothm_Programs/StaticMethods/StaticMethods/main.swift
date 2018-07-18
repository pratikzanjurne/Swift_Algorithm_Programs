/*
 *  Purpose - Create utility class of all the Static Methods.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   18-07-2018
 */
import Foundation
let u = Utility()
print("Choose the operation from the following methods.")
print("1. Binary search for the Integer.")
print("2. Binary search for the String.")
print("3. Insertion Sort for the Integer.")
print("4. Insertion Sort for the String.")
print("5. Bubble Sort for the Integer.")
print("6. Bubble Sort for the String.")
var choice:String = readLine()!
switch(choice){
case "1":
{
    
    }
case "2":
{
    
    }
case "3":
{   print("Enter the Integer array size.")
    if let size = readLine(){
        if let size = Int(size){
            var integerArray = [Int]()
            integerArray = u.getIntegerArray(size: size)
            u.doInsertionSortInteger(integerArray:integerArray,size:size)
        }else{
            print("Enter an Integer value.")
        }
    }

    
    }
case "4":
{  print("Enter the size of your string for the insertion sort.")
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
    }
case "5":
{
    
    }
case "6":
{
    
    }
default:
    print("Please enter the correct choice.")
}
