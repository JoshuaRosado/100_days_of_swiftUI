import UIKit
import Foundation

// HOW TO CREATE AND USE CLOSURES

// ---- how to create a copy of a function

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser // when copying with don't use ()
// because using () means to invoke or call the function
greetCopy() // call the new copy function


// ======= WHAT TYPE IS A FUNCTION

var greetCopy1: () -> Void = greetUser
// () = marks a func that accepts NO param
// -> = declare the return function
// Void = nothing



// ===== CREATING A CLOSURE

let sayHello = {
    print("Hi there!")
}

sayHello()

// ==== CREATING CLOSURES TO ACCEPTS PARAMETERS

let sayHello1 = { (name: String) -> String in //"in" MARKS end of param and return type
    "Hi\(name)!"
}

sayHello1("Taylor")




let team = ["Gloria", " Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted) // passing constant to be sorted using the function created (captainFirstSorted)
//print(captainFirstTeam)



let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)


// ==== CLOSURES SYNTAX


let colors = ["Red", "Blue", "Green", "Purple", "Yellow"]
let sortedColors = colors.sorted()

let primaryColors = colors.sorted(by: {(color: String, color2: String) -> Bool in
    color == "Red" || color == "Yellow" || color == "Blue" || color2 == "Red" || color2 == "Yellow" || color2 == "Blue"
})

print(primaryColors)
