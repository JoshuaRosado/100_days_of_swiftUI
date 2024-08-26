import UIKit
import Foundation


//To check your knowledge, here’s a small task for you: create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?


// mySolution 1

struct Car{
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int // private (set) so it can be read but only access by the internal method
    
    mutating func upShift() {if currentGear < 10 {currentGear += 1}}
    mutating func downShift() {if currentGear > 1 {currentGear -= 1}}


    static let exampleOfCar = Car(model: "Legacy", numberOfSeats: 5, currentGear: 3)
}


var myCar = Car(model: "Legacy", numberOfSeats: 5, currentGear: 2)
print(myCar.currentGear)
myCar.upShift() // 3rd shift
myCar.upShift() // 4th shift
print(myCar.currentGear)
myCar.downShift() // 3rd shift
print(myCar.currentGear)


