/*
 *  Purpose - Create utility class of all the Static Methods.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   18-07-2018
 */
import Foundation
let utility = Utility()
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
    var integerArray = [6,5,4,3,2,3]
    integerArray = utility.doBubbleSortInteger(integerArray: integerArray, size: integerArray.count)
    print("Enter the integer to serach.")
    if let integer = readLine(){
        if let integer = Int(integer){
            let result:Bool = utility.searchBinaryInteger(integerArray:integerArray,size:integerArray.count,integer:integer)
            if result == true{
                print("The entered integer is found in the Array.")
            }else{
                print("The entered integer is not found in the Array.")
            }
        }else{
            print("Enter the integer value.")
        }
    }
    
case "2":
    var stringArray = ["a","g","y","a","c"]
    stringArray = utility.doBubbleSortString(stringArray: stringArray, size: stringArray.count)
    print("Enter the string youy want to search in the array.")
    let string = readLine()!
    let result:Bool = utility.searchBinaryString(stringArray:stringArray,size:stringArray.count,string:string)
    if result == true{
        print("The entered string is found in the array.")
    }else{
        print("The entered string was not found in the array.")
    }

case "3":
  print("Enter the Integer array size.")
    if let size = readLine(){
        if let size = Int(size){
            var integerArray = [Int]()
            integerArray = utility.getIntegerArray(size: size)
            integerArray = utility.doInsertionSortInteger(integerArray:integerArray,size:size)
            print(integerArray)
        }else{
            print("Enter an Integer value.")
        }
    }

case "4":
  print("Enter the size of your string for the insertion sort.")
    if let size = readLine(){
        if let size = Int(size){
            print("Enter the string of size \(size)")
            var input = [String]()
            input = utility.getStringArray(size: size)
            input = utility.doInsertionSortString(stringArray:input,size:size)
            print(input)
        }else{
            print("Enter the size in Integer value.")
        }
    }
    
case "5":
    print("Enter the Integer array size for bubble sort.")
    if let size = readLine(){
        if let size = Int(size){
            var integerArray = [Int]()
            integerArray = utility.getIntegerArray(size: size)
        integerArray = utility.doBubbleSortInteger(integerArray:integerArray,size:size)
        print(integerArray)
        }else{
            print("Enter an Integer value.")
        }
    }

case "6":
    print("Enter the size of your string for the bubble sort.")
    if let size = readLine(){
        if let size = Int(size){
            print("Enter the string of size \(size)")
            var input = [String]()
            input = utility.getStringArray(size: size)
            input = utility.doBubbleSortString(stringArray:input,size:size)
            print(input)
        }else{
            print("Enter the size in Integer value.")
        }
    }
    
    
default:
    print("Please enter the correct choice.")
}
