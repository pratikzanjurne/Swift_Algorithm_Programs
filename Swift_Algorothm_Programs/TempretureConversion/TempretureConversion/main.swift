/*
 *  Purpose - Tempreture conversion.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   19-07-2018
 */
import Foundation
let u = TempretureConversion()
print("Enyter the tempreture you want to convert.")
if let temp = readLine(){
    if let temp = Double(temp){
        var convertedTemp = u.tempretureConversion(temp:temp)
        print(convertedTemp)
    }else{
        print("Please enter the double value.")
    }
}

