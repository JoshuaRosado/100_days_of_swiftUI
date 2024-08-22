import UIKit
import Foundation

// HOW TO LIMIT ACCESS TO INTERNAL DATA USING ACCESS CONTROL

// ACCESS CONTROL:

// private = Don't let anything outside the struct use this.
// fileprivate = Don't let anything outside the current file use this.
// public = Let anyone, anywhere us this.
// private(set) = Let anyone read this, but only my internal method write it.

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func witdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)

let success = account.witdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
