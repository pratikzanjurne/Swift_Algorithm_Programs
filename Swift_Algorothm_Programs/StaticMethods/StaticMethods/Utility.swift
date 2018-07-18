import Foundation
class Utility{
    var integerArray = [Int]()
    var stringArray = [String]()
    func getIntegerArray(size:Int) -> [Int] {
        print("Enter the \(size) elements in your array.")
        var integerArray = [Int]()
        for index in 0..<size {
            if let x = readLine(){
                if let x = Int(x){
                    integerArray.append(x)
                }else {
                    print("Enter an Integer value")
                }
            }
        }
        return integerArray
    }
    func getStringArray(size:Int)->[String]{
        var stringArray = [String]()
        for index in 0..<size{
            stringArray.append(readLine()!)
        }
        return stringArray
    }
    func doInsertionSortInteger(integerArray:[Int],size:Int){
        var temp:Int
        self.integerArray = integerArray
        for index in 1..<size{
            temp = self.integerArray[index]
            var index1:Int = index - 1
            while(index1 >= 0 ){
                if temp > self.integerArray[index1]{
                    break
                }
                self.integerArray[index1+1] = self.integerArray[index1]
                index1 -= 1
            }
            self.integerArray[index1+1] = temp
            print(self.integerArray)
        }
    }
    func doInsertionSortString(stringArray:[String],size:Int){
        var temp:String
        self.stringArray = stringArray
        for index in 1..<size{
            temp = self.stringArray[index]
            var index1:Int = index - 1
            while(index1 >= 0 ){
                if temp > self.stringArray[index1]{
                    break
                }
                self.stringArray[index1+1] = self.stringArray[index1]
                index1 -= 1
            }
            self.stringArray[index1+1] = temp
            print(self.stringArray)
        }
    }
}
