
let manager:ActionManager = Manager(no1: 12, no2: 3)
print("1. Add two numbers.\n 2.Multiply two numbers\n 3 Substract two  numbers.\n Enter the choice.")
let choice = readLine()!
if let choice = Int(choice){
    switch choice{
    case 1:
        manager.addNumbers()
        break
    case 2:
        break
    case 3:
        break
    default:
        print("Enter the corect choice.")
    }
}
