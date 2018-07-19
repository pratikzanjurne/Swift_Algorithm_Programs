import Foundation
class DayOfWeek{
    func getDayOfWeek(date:Int,month:Int,year:Int) -> String {
        var day:String = ""
        let y0 = year - (14 - month ) / 12
        let x = y0 + y0/4 + y0/100 + y0/400
        let m0 = month + 12 * ((14 - month) / 12) - 2
        let d0 = (date + x + 31*m0 / 12) % 7
        switch d0 {
        case 0:
            day = "Tuesday"
            return day
        case 1:
            day = "Wednesday"
            return day
        case 2:
            day = "Thursday"
            return day
        case 3:
            day = "Friday"
            return day
        case 4:
            day = "Saturday"
            return day
        case 5:
            day = "Sunday"
            return day
        case 6:
            day = "Monday"
            return day

        default:
            break
        }
        return day
    }
}
