import Foundation
class InsertionSort {
    var stringArray = [String]()
    
    func getStringArray(size:Int)->[String]{
        var stringArray = [String]()
        for index in 0..<size{
            stringArray.append(readLine()!)
        }
        return stringArray
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
