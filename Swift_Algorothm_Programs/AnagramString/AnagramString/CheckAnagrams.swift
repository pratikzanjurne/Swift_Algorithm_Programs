import Foundation
class CheckAnagrams{
    var string1:String = ""
    var string2:String = ""

    func checkAnagrams(string1:String , string2:String) -> Bool
    {
        self.string1 = string1
        self.string2 = string2
        
        self.string1.replacingOccurrences(of: " ", with: "")
        self.string2.replacingOccurrences(of: " ", with: "")
        
        if self.string1.count == self.string2.count{
            if self.string1.sorted() == self.string2.sorted(){
                return true
            }else{
                return false
            }
        }else{
            print("Enter the strings of equal length.")
        }
        return false
    }
    
}
