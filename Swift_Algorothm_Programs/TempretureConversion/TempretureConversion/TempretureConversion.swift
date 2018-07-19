import Foundation
class TempretureConversion{
    func tempretureConversion(temp:Double) -> Double {
        var convertedTemp:Double = 0.0
        print("Enter your choice.")
        print("1. Celsius to Fahrenheit.")
        print("2.Fahrenheit to Celsius.")
        if let input = readLine(){
            if let input = Int(input){
                switch(input){
                case 1:
                     convertedTemp = (temp * 9/5) + 32
                     return convertedTemp
                case 2:
                    convertedTemp = (temp - 32) * 5/9
                    return convertedTemp
                default:
                    print("Enter the correct integer.")
                }
            }else{
                print("Enter the integer.")
            }
        }
        
        
        return convertedTemp
    }
    
    
}
