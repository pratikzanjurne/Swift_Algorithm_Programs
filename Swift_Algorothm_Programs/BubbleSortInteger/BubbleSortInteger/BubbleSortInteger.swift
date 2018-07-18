import Foundation
class BubbleSortInteger{
    
    var integerArray = [Int]()
    
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
    
    func doBubbleSortInteger(integerArray:[Int],size:Int){
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
        print(self.integerArray)
    }
}
