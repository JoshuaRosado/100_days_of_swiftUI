import UIKit
import Foundation


// HOW TO COMPUTE PROPERTY VALUES DYNAMICALLY

struct Employee{
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


// myPractice


struct Item{
    let name : String
    var buyPrice:Double = 0
    var myMoney = 30.00
    
    var moneyRemaining: Double {
        get{
            myMoney - buyPrice
        }
        set{
            myMoney = buyPrice + newValue
        }
    }
}

let phoneCase = Item(name: "iPhone Case", buyPrice: 28.98)
phoneCase.buyPrice
print(phoneCase.moneyRemaining)


struct BankAccount{
    let name : String
    var balance : Double = 100.00
    var deposit: Double = 0
    var withdrawl: Double = 0
    
    var currentBalance: Double {
        get{
            balance - withdrawl
        }
        set{
            balance = withdrawl + newValue
        }
    }
}

let myAccount = BankAccount(name: "Savings Account", withdrawl: 54.50)
myAccount.withdrawl

print(myAccount.currentBalance)

