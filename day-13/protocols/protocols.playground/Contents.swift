import UIKit
import Foundation

// HOW TO CREATE AND USE PROTOCOLS

//func commute(distance: Int, using vehicle: Train) {
//    // code
//}


protocol Vehicle {
    var name: String {get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
    // No function bodies allowed
}


struct Car: Vehicle{
    let name = "Car"
    var currentPassengers = 1
    // it has to have the func from the protocol. Same name, parameters and returns.
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    // new function
    func openSunroof(){
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle{
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance:Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km ")
    }
}

let car = Car()
commute(distance: 100, using: car)
let bike = Bicycle()
commute(distance: 50, using: bike)
getTravelEstimates(using: [car, bike], distance: 100)




// myPractice



class Account{
    var firstName: String
    var username: String
    var balance: Int
    var pinCode: Int
    init(firstName: String ,username: String, balance: Int, pinCode: Int) {
        self.firstName = firstName
        self.username = username
        self.balance = balance
        self.pinCode = pinCode
        }
    func buyProduct(product: String, productPrice: Int){
        var price = productPrice
        if self.balance < price{
            print("Not enough funds. You are $\(price - self.balance) short")
        } else{
            self.balance -= price
            print("Account balance: $\(self.balance)")
        }
    }
}

let myAccount = Account(firstName: "D'engineer",username: "dengineer", balance: 20_000, pinCode: 4031)


protocol AppleDevice{
    var name: String {get}
    var price : Int {get set}
    func logIn(username: String, pinCode: Int)
    func showInfo()
}

struct Macbook: AppleDevice{
    var name: String = "Macbook Pro"
    var price: Int = 1_600
    func logIn(username: String, pinCode: Int) {
        if username == myAccount.username && pinCode == myAccount.pinCode{
            print("Welcome!")
        } else {
            print("Wrong username ")
        }
    }
    
    func showInfo() {
        print("Mr.\(myAccount.username)'s account balance: $\(myAccount.balance)")
    }
}

let theMacbook = Macbook()

myAccount.buyProduct(product: theMacbook.name, productPrice: theMacbook.price)
theMacbook.showInfo()
theMacbook.logIn(username: "dengineer", pinCode: 4031)





