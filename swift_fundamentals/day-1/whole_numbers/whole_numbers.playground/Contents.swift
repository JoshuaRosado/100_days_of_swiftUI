import UIKit
import Foundation

// HOW TO STORE WHOLE NUMBERS
// USING INTEGER = INT
// LATIN WORD INTEGER MEANS "WHOLE"

let score = 10

//let reallyBig = 100000000  HARD TO READ
let reallyBig = 100_000_000  // READIBLE

// MATH OPERATORS

let lowerScore = score - 2 // SUBTRACTION
let higherScore = score + 10 // ADDITION
let doubledScore = score * 2 // MULTIPLICATION
let squaredScore = score * score // SQUARE
let halvedScore = score / 2 // DIVISION

var counter = 10
counter += 5 // adds 5 to the variable selected
print(counter)

counter *= 2
counter -= 10
counter /= 2


// How to find if a INT is multiple by a specific number
// Using .isMutiple(of: yourNumber)
let number = 120
print(number.isMultiple(of: 3)) // using constant
print(120.isMultiple(of: 6)) // using raw direct int


