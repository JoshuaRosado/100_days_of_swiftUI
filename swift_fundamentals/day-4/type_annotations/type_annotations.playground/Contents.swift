import UIKit
import Foundation


// HOW TO USE TYPE ANNOTATIONS



// example of TYPE INFERENCE

let surname = "Lasso"
var score = 0
let change = 5.25
let isTrue = true
let array = ["Water", "Milk"]
let dictionary = ["Water": 1.00, "Milk": 7.99]
var books = Set([
"Harry Potter",
"Games of Thrones"])


// example of TYPE ANNOTATIONS

let surname1: String = "Lasso"
var score1: Int = 0
let change1: Double = 5.25
let isTrue1: Bool = true
let array1:[String] = ["Water", "Milk"]
let dictionary1:[String: Double] = ["Water": 1.00, "Milk": 7.99]
var books1: Set<String> = Set([
"Harry Potter",
"Games of Thrones"])



// USE FOR INIT AN EMPTY VAR
// example

// 3 Different ways of declaring it

var teams: [String] = [String]() // empty array of Strings
var cities: [String] = [] // empty array of Strings
var clues = [String]() // empty array of Strings


enum UIStyle{
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = UIStyle.dark
style = .dark // it knows is a UIStyle
style = .system
style = .light


let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
