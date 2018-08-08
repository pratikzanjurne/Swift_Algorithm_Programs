
class AddThree: AdditionTwo {
    var no3:Int
    init(no1:Int,no2:Int,no3:Int) {
        self.no3 = no3
        super.init(a: no1, b: no2)

    }
    
    override func add() -> Int {
        return (a+b+no3)
    }
}
