import UIKit
import Foundation


// HOW TO JOIN STRINGS TOGETHER
// CONCATENATION

// Using string '+' string

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action


// STRING INTERPOLATION

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
//let missionMessage = "Apollo" + String(number) + "landed on the moon. "  --- NO
let missionMessage = "Apollo \(number) landed on the moon. " // --- YES


print("5 x 5 is \(5 * 5)")
