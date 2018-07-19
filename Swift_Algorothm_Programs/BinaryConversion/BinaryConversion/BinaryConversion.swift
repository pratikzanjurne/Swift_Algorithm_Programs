import Foundation
class BinaryConversion{
    var number:Int = 0
    func toBinary(number:Int) -> String {
        var stringBinary = [String]()
        self.number = number
        while self.number > 0{
            if self.number % 2 == 0{
                stringBinary.append("0")
                self.number = self.number/2
            }else{
                stringBinary.append("1")
                self.number = self.number/2
            }
        }
        var stringBinary1:String = ""
        var x:Int = stringBinary.count-1
        while x >= 0{
            stringBinary1 += stringBinary[x]
            x -= 1
        }
        return stringBinary1
    }
    
}
