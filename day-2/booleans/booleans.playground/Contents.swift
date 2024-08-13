import UIKit
import Foundation


// HOW TO STORE TRUTH WITH BOOLEANS

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg")) // true

let number = 120
print(number.isMultiple(of: 3)) // true


// Storing boolean

let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple(of: 3)


// ===== 2 WAYS TO UPDATE BOOLEAN

// ----WAY # 1  =  '!'

var isAuthenticated = false
// using the '!' symbol
isAuthenticated = !isAuthenticated // update from false to true
print(isAuthenticated)

// ---- WAY # 2 = '.toggle()'

var gameOver1 = false
print(gameOver1) // false
// using .toggle()
gameOver1.toggle() // update from false to true
print(gameOver1) // true



