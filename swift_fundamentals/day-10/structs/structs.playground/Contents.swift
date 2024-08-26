import UIKit
import Foundation

// HOW TO CREATE YOUR OWN STRUCTS

struct Album {
    let title: String
    let artist: String
    let year: Int

    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

// Constances

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

red.printSummary()
wings.printSummary()


struct Employee { // structs create instances as constant
    // PROPERTIES OF STRUCTS
    let name: String
    var vacationRemaining: Int
    // using "mutating" keyword to be able to update
    // METHODS OF STRUCTS
    mutating func takeVacation(days: Int) { //
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining")
        }
    }
}

// INSTANCES FROM A STRUCT
 var anEmployee = Employee(name: "Gervonta Davis" , vacationRemaining: 14) // INITIALIZER OF A STRUCT
anEmployee.takeVacation(days: 5)
print(anEmployee.vacationRemaining)


let a = 1
let b = 2.0
let c = Double(a) + b // create a Double out of a INT
