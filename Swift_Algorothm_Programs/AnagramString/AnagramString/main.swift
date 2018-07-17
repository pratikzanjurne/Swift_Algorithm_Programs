/*
 *  Purpose - To detrmine the Strings are anagram or not.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   12-07-2018
 */
import Foundation
print("Enter the First string.")
if let string1 = readLine(){
    if let string1 = Int(string1){
        print("Enter the string.")
    }else{
        print("Enter the second string.")
        if let string2 = readLine(){
            if let string2 = Int(string2){
                print("Enter the string.")
            }else{
                let result = CheckAnagrams()
                let finalresult:Bool = result.checkAnagrams(string1:string1 , string2:string2)
                if finalresult == true{
                    print("Strings are Anagrams.")
                }else{
                    print("strings are not Anagrams.")
                }
            }
        }
    }
}

