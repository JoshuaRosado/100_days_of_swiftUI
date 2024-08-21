import UIKit
import Foundation

// HOW TO CREATE CUSTOM INITIALIZERS

// from this

//struct Player{
//    let name: String
//    let number: Int
//}
//
//let player = Player(name: "KD", number: 7)

// to this

struct Player{
    let name: String
    let number: Int
    // initializer
    init(name: String, number: Int) { // does not return
        self.name = name
        self.number = number
    }
}

let player = Player(name: "KD", number: 7)

// --- myPractice

struct Computer{
    let brand: String
    var price: Double
    let model: Int
    init(brand: String, price: Double) {
        self.brand = brand
        self.price = price
        model = 2020
    }
}

var myComputer = Computer(brand: "Apple", price: 1600.00)
print(myComputer.model)

print("My computer is an \(myComputer.brand) from \(myComputer.model) and it cost $\(myComputer.price) but with taxes it was $\(myComputer.price + 150.55)")

