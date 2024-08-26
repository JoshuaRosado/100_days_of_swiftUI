import UIKit
import Foundation

// HOW TO CHECK A CONDITION IS TRUE OR FALSE

var someCondition = true

if someCondition{
    print("Do something")
}

// Comparison Operators
// >, < , >=, <= , == , !=

let score = 85

if score > 80 {
    print("Great job")
}

let firstTest = 100
let secondTest = 78
let thirdTest = 89
var sumOfAllTests = firstTest + secondTest + thirdTest
let percentage = 0.7
let totalScore = 300
let minimumScoreToPass = percentage * Double(totalScore)


if Double(sumOfAllTests) >= minimumScoreToPass{
    print("You passed")
} else {
    print("Failed")
}


var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3{
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Keanu Reeves"

if name != "Anonymous"{
    print("Welcome, \(name)")
}

var username = ""

if username.isEmpty{ // if (username is empty) is true?
    username = "Anonymous" // username is anonymous
}
print(username)

