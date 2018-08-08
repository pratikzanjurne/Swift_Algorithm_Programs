import  Foundation

class Singleton{
    
    static let shared = Singleton()
    
    private init(){
        
    }
    
    func addTwoNum(num1:Int , num2:Int) -> Int {
        return (num1 + num2)
    }
    
}

let addition = Singleton.shared.addTwoNum(num1: 4, num2: 8)
print(addition)
