import  Foundation

protocol ActionManager{
    func addNumbers()
}

class Manager:ActionManager{
    var no1:Int
    var no2:Int
    init(no1:Int,no2:Int) {
        self.no1 = no1
        self.no2 = no2
    }
    func addNumbers(){
        print("Addition is \(no1)+\(no2) = \(no1+no2)")
    }
}
