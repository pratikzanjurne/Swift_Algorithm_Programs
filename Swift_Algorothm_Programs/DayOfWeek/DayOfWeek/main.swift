/*
 *  Purpose - To find the day of the week.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   19-07-2018
 */
import Foundation
let u = DayOfWeek()
print("Enter the date.")
if let date = readLine(){
    if let date = Int(date){
        print("Enter the month.")
        if let month = readLine(){
            if let month = Int(month){
                print("Enter the year.")
                if let year = readLine(){
                    if let year = Int(year){
                        let day:String = u.getDayOfWeek(date:date,month:month,year:year)
                        print(day)
                    }else{
                        print("Enter the integer value.")
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
