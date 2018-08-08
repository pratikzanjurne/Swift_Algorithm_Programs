/*
 *  Purpose - To print Calander.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   24-07-2018
 */


import  Foundation

let utility = Calander()
let leapYear = leapyear()
print("Enter the month.")
if let month = readLine(){
    if let month = Int(month){
        print("Enter the year.")
        if let year = readLine(){
            if let year = Int(year){
                print("    \(Calander.months[month])   \(year) ")
                print("S   M   Tu  W   Th  F   S ")
                utility.printCalander(month: month, year: year)
            }else {
                print("Enter the integer value.")
            }
        }
    }else{
        print("Enter the integer value.")
    }
}
