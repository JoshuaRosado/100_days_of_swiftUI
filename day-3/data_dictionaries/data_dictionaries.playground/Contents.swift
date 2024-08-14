import UIKit
import Foundation

// HOW TO STORE AND FIND DATA IN DICTIONARIES

// difference  array vs dictionaries

// ARRAY:

// array = ORDERED
// ( values )
// (access by index number)

// DICTIONARY:

// dictionaries = UNORDERED
// ( keys and values )
// (access by keys)



let employee2 = [
    "name" : "Taylor Swift",
    "job" : "Singer",
    "location" : "Nashville"]

print(employee2["name", default: "Unknown"]) //return "name" if not exist, return "unknown
print(employee2["job", default: "Unknown"])//return "job" if not exist, return "unknown
print(employee2["location", default: "Unknown"])//return "location" if not exist, return "unknown

// --- HOW TO STORE DICTIONARY WITH
// KEY: STRING , VALUE : BOOLEAN

let hasGraduated = [
    "Eric": false,
    "Magna": true,
    "Laurit": false
]

// --- HOW TO STORE DICTIONARY WITH
// KEY: INT , VALUE : STRING

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"]

print(olympics[2012, default: "Unknown"])


// --- HOW TO STORE DICTIONARY WITH
// KEY: STRING , VALUE : INT

var heights = [String: Int]() // empty dictionary of [KEY: String, VALUE: Int]
// how to insert keys and values to dictionary

heights["Yao Ming"] = 229 // ["key"] = value
heights["Shaquille O'neal"] = 216
heights["Lebron James"] = 206

// --- HOW TO STORE DICTIONARY WITH
// KEY: STRING , VALUE : STRING

var archEnemies = [String: String]()
// how to insert keys and values to dictionary

archEnemies["Batman"] = "The Joker" // ["String"] = "String"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
 



print(archEnemies["Batman", default: "Unknown"])
print(archEnemies["Superman", default: "Unknown"])
