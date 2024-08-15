import UIKit
import Foundation

// HOW TO CHECK MULTIPLE CONDITIONS

let age = 16

if age >= 18{ // if age is equal or greater than 18
    print("You can vote in the next election")
} else if age < 18{ // else if age is less than 18
    print("Sorry, you're too young to vote")
} else {
    print("How old are you?")
}

//COMBINE CONDITION

// LOGICAL OPERATORS
// AND = &&
let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// LOGICAL OPERATORS
// OR = ||
let userAge = 14
let hasParentalConsent = true
if age >= 18 || hasParentalConsent == true {
    print("You can buy the game!")
}


enum TransportOptions{
    case airplane, helicopter, car, train, boat, bike
}

let transport = TransportOptions.airplane

if transport == .airplane || transport == .helicopter{
    print("Let's fly")
} else if transport == .bike{
    print(" I hoe there's a bike path...")
}else if transport == .car{
    print("Time to get stuck in traffic.")
}else {
    print("I'm going to hire a scooter now!")
}



enum StatesDestinationGoals {
    case virginia, northCarolina, maine
}

let stateDestination = StatesDestinationGoals.virginia

if stateDestination == .virginia {
    print("Virginia Beach")
}else if stateDestination == . northCarolina{
    print("New Bern")
}else if stateDestination == .maine{
    print("Portland")
}else {
    print("No Destination")
}


