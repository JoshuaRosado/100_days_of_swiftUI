import UIKit
import Foundation

// HOW TO HANDLE MISSING DATA WITH OPTIONALS

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

// Data that might be present or might not be present

// nil = nothing / no value

// regular string = String
// optional string = String?

if let marioOpposite = opposites["Mario"] { // if the optional has a value inside it WILL UNWRAP. And put the value into the constant
    
    print("Mario's opposite is \(marioOpposite)")
}


//---- another example

var username: String? = nil // empty variable / no value
if let unwrappedName = username { // if optional has a value unwrap
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty") // if optional is empty print this
}


var num1 = 1_000_000 // Int
var num2 = 0 // Int
var num3: Int? = nil // Optional Int

var str1 = "Hello" // String
var str2 = "" // Empty String
var str3: String? = nil // Optional String

var arr1 = [0] // array
var arr2 = [Int]() // empty array
var arr3: [Int]? = nil // optional array



func square(number: Int) -> Int{
    number * number
}

var number : Int? = nil
if let number = number{
    print(square(number: number))
}
