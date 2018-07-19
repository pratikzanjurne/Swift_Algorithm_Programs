import Foundation
class MonthlyPayment{
    func monthlyPayment(years:Int,amount:Int,intrest:Double)->Double{
        var payment:Double
        let n:Double = Double(years * 12)
        let r = intrest / ( 12  * 100 )
        payment = ( Double(amount) * r ) / (1 - pow(1 + r,-n))
        return payment
    }
}

