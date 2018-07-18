import Foundation
class FindNumber{
    var upper:Int = 0
    var middle:Int = 0
    var lower:Int = 0
    
    func getNumber(number: Int){
        upper = number
        lower = 0
        middle = ( upper + lower )/2
        print("Is your number is \(middle)")
        print("Always give your answer in 'yes','high' or 'low'.")
        var input:String = readLine()!
        for index in 0...number{
            if input == "high"{
                lower = middle
            }
            if input == "yes"{
                print("Your number is \(middle)")
                break
            }
            if input == "low"{
                upper = middle
            }
            while(number>0){
                middle = ( upper + lower )/2
                print("Is your number is \(middle)")
                input = readLine()!
                break
            }
        }
    }
}
