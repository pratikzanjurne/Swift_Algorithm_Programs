import Foundation

class Calander {
    
    static var months:[String] = [
        "January", "February", "March",
        "April", "May", "June",
        "July", "August", "September",
        "October", "November", "December"
    ]
    static var days:[Int] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    
    func day(month:Int,day:Int,year:Int) -> Int {
        let y:Int = year - (14 - month) / 12;
        let x:Int = y + y/4 - y/100 + y/400;
        let m:Int = month + 12 * ((14 - month) / 12) - 2;
        let d:Int = (day + x + (31*m)/12) % 7;
        return d
    }
    
    func printCalander(month:Int,year:Int){
        
        if month == 2 && leapYear.checkLeapYear(year: year) {
            Calander.days[month] = 29
        }
        let d:Int = day(month:month,day: 1,year: year)
        
        for index in 0..<d{
            print("  ",terminator:" ")
        }
        for index in 1...Calander.days[month]
        {
            print(index , terminator:"  ")
            if (((index + d) % 7 == 0) || (index == Calander.days[month])){
                print()
            }
            
        }

        
    }
    
}
