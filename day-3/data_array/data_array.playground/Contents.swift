import UIKit
import Foundation
// HOW TO STORE ORDERED DATA IN ARRAYS

// ARRAY = ORDERED

var beatles = ["John", "Paul", "George", "Ringo"] // Strings
var numbers = [1,2,3,4,5,6,7,8,9,10] // Int
var temperatures = [25.3, 28.2, 26.4] // Float

// index position starts at 0
// 0,1,2,3

// --- HOW TO ACCESS THE ARRAY BY USING THE INDEX POSITION

print(beatles[2]) // output = George
beatles.append("Adrian") // "Adrian" added to beatles array

print(numbers[0]) // output = 1
numbers.append(150) // 150 added to numbers array


var scores = Array<Int>() // empty array Int (ANGLE BRACKETS
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


// --- HOW TO ADD AN A VALUE INTO THE ARRAY


var sports = Array<String>() // empty array of Strings (ANGLE BRACKETS)
sports.append("Skateboarding")
sports.append("Surfing")
sports.append("Swimming")
sports.append("Basketball")
print(sports) // ["Skateboarding", "Surfing", "Swimming", "Basketball"]

// INFO *
// array<String>() --- using <> ANGLE BRACKETS
// array[String]() --- using [] SQUARE BRACKETS


// --- HOW TO CHECK THE COUNT TOTAL OF THE VALUES

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count) // 4


// --- HOW TO REMOVE BY INDEX / REMOVE ALL\

characters.remove(at: 1) // Remove Pam
characters.removeAll() // Remove all
print(characters) // empty array


// --- HOW TO CHECK IF THE ARRAY CONTAINS "String selected"

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Spectre")) // true
// check if is true = returns bool


// --- HOW TO SORT THE ORDER OF THE ARRAY

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // sorting the order of the array


// --- HOW TO REVERSE THE ARRAY ORDER

var presidents = ["Bush", "Obama", "Trump", "Biden"]
var reversedPresidents = presidents.reversed()
print(reversedPresidents) // returns an object

