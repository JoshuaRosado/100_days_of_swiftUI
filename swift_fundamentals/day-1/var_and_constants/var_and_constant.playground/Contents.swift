import UIKit
import Foundation


// variables - can be change after declaring them

var name = "Khai"
var yourName = name
yourName = "Leya"
print(yourName)


// let (constant) - can NOT be change. That's why is a CONSTANT, cause is CONSTANT

let pet = "dog"
let myPet = pet
//pet = "cat" error! Cannot assign to value: 'pet' is a 'let' constan
print(pet) // output = "dog


// Try using constant as much as you can. Swift will stop you by changing values by accident
