import Foundation
class Utility{
    var integerArray = [Int]()
    var stringArray = [String]()
    func getIntegerArray(size:Int) -> [Int] {
        print("Enter the \(size) elements in your array.")
        var integerArray = [Int]()
        for _ in 0..<size {
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
        for _ in 0..<size{
            stringArray.append(readLine()!)
        }
        return stringArray
    }
    func doInsertionSortInteger(integerArray:[Int],size:Int)->[Int]{
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
            //print(self.integerArray)
        }
        return self.integerArray
    }
    func doInsertionSortString(stringArray:[String],size:Int)->[String]{
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
            //print(self.stringArray)
        }
        return self.stringArray
    }
    
    func doBubbleSortInteger(integerArray:[Int],size:Int)->[Int]{
        var temp:Int
        self.integerArray = integerArray
        for index in 0..<size-1{
            for index1 in 0..<size-index-1{
                if self.integerArray[index1] > self.integerArray[index1+1]
                {
                    temp = self.integerArray[index1]
                    self.integerArray[index1] = self.integerArray[index1+1]
                    self.integerArray[index1+1] = temp
                }
            }
        }
        //print(self.integerArray)
        return self.integerArray
    }
    
    func doBubbleSortString(stringArray:[String],size:Int)->[String]{
        var temp:String
        self.stringArray = stringArray
        for index in 0..<size-1{
            for index1 in 0..<size-index-1{
                if self.stringArray[index1] > self.stringArray[index1+1]
                {
                    temp = self.stringArray[index1]
                    self.stringArray[index1] = self.stringArray[index1+1]
                    self.stringArray[index1+1] = temp
                }
            }
        }
        //print(self.stringArray)
        return self.stringArray
    }
    
    func searchBinaryInteger(integerArray:[Int],size:Int,integer:Int) -> Bool {
        self.integerArray = integerArray
        var upper:Int = size-1
        var lower:Int = 0
        var middle:Int = ( upper + lower ) / 2
        for _ in 0...size-1{
            if self.integerArray[middle] > integer{
                upper = middle
            }
            if self.integerArray[middle] == integer{
                return true
            }
            if self.integerArray[middle] < integer{
                lower = middle
            }
            while size > 0{
                middle = ( upper + lower ) / 2
                break
            }
        }
        return false
    }
    
    func searchBinaryString(stringArray:[String],size:Int,string:String) -> Bool {
        self.stringArray = stringArray
        var upper:Int = size-1
        var lower:Int = 0
        var middle:Int = ( upper + lower ) / 2
        for _ in 0...size-1{
            if self.stringArray[middle] > string{
                upper = middle
            }
            if self.stringArray[middle] == string{
                return true
            }
            if self.stringArray[middle] < string{
                lower = middle
            }
            while size > 0{
                middle = ( upper + lower ) / 2
                break
            }
        }
        return false
    }
}
