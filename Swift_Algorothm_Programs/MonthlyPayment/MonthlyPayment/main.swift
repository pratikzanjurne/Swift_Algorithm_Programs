/*
 *  Purpose - to calclulate Monthly payment.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   19-07-2018
 */
import Foundation
let u = MonthlyPayment()
print("Fill the following details.")
print("Enter the years to pay off.")
if let years = readLine(){
    if let years = Int(years){
        print("Enter the Principal loan amount.")
        if let amount = readLine(){
            if let amount = Int(amount){
                print("Enter the percent of intrest calculated monthly.")
                if let intrest = readLine(){
                    if let intrest = Double(intrest){
                        var payment = u.monthlyPayment(years:years,amount:amount,intrest:intrest)
                        print("The total payment is : ")
                        print(payment)
                    }else{
                        print("Enter the integer or double value.")
                    }
                }
            }else{
                print("Enter the integer value.")
            }
        }
    }else{
        print("Enter the integer value.")
    }
}

