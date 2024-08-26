import UIKit
import Foundation

// FUNDAMENTALS OF SWIFT

// ================= Variable vs Constant

// VAR = changeable

var name = "Khai"
name = "Leya" // changing the value of name to

// LET = Unchangeable
let user = "Lexi"
print(user)

// =================  Strings

let actor = "Tom Cruise"
// using double quotes inside of a string  = \"word"\
let quote = " He tapped a sign saying \"Believe\" and walked away"
// using multiple line string using 3 double quotes """ message """
let movie = """
A day in the
life of an
Apple engineer
"""

print(actor.count) // print the count of characters in the value
print(quote.hasPrefix("He")) // check if string starts with "He"
print(quote.hasSuffix("away")) // check if string ends with "away"


// =================  Integers

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...100)


// =================  Decimals

let scores = 3.1  // = DOUBLE


// =================  Bool

let goodDogs = false
var isSaved = true
isSaved.toggle() // fliping boolean to the opposite. Now isSaved is false


// =================  Joining Strings

let firstName = "Tom"
let age = 52
let message = "Hello there"
print("\(message), my name is \(firstName) and I'm \(age) years old")


// =================  Array

var colors = ["blue", "red", "yellow"]
var numbers = [4,6,8,3,2]
var readings = [0.1, 0.2, 0.3]

// how to access the arrays
print(colors[0])
print(readings[2])

// how to add
colors.append("Tartan")
// how to remove
colors.remove(at: 2)
// check the count of the array
print(colors.count)


// =================  Dictionaries

let employee = ["name": "Leya", "job": "Player"]

// how to acess the dictionay
print(employee["name", default: "Unknown"]) // if dictionary has a value in that key return else return Unknow // output"Leya"


// ================= Sets (similar to arrays)

// it does not have an order like array has
// it does not allows duplicates

var numbers2 = Set([1,1,3,5,7])
print(numbers2)

numbers.insert(10, at: 0) // uses insert not append ( because Sets does not have an order )
numbers.contains(11) // check if it has 11 numbers

// =================  Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.friday
day = .friday


// =================  Type Annotation

var theNum = 0
let theNum2: Int = 1
let lastName: String = "Rosado"
let isYoung: Bool = true
let percentage: Double = 0.50

var albums: [String] = ["red", "blue"]
var userId: [String: String] = ["id": "ceo"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams : [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, darl, system
}

var style: UIStyle = .light


// =================  Conditions

let yourAge = 16

if age < 12 {
    print("You can't vote.")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vota now")
}


// && = AND
// || = OR

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day")
}


// =================  Switch Statements

enum Weather  {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast{
case . sun:
    print("Sunny day")
case . rain:
    print("Bring the umbrella")
default:
    print("Should be okay")
}
// switch condition needs to be exhausted
// using default: at the end for any other case



// =================  Ternary condition operator

let yearsOld = 18
let canVote = age >= 18 ? "yes" : "no"
// if age is greater or equal than 18 return yes, else return no
print(canVote)

// =================  LOOPS

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms{
    print("Swift works on \(os)")
}

for i in 1..<12{
    print("5 x \(i) is \(5*1)")
}

var lyric = "Haters gonna"
for _ in 1...5{
    lyric += " hate"
}
print(lyric)


// --- while loops

var count = 10
while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")



let files = ["me.jpg", "work.txt", "sophie.jpg"]


// continue == will continue with the next iteration
// break == will exit the loop

for file in files {
    if file.hasSuffix(".jpg") == false{
        continue
    }
    print("Found picture: \(file)")
}

// =================  Functions

func printTimesTable(number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number: 8)

func rollDice() -> Int{
    Int.random(in: 1...6)
}
rollDice()


// =================  Returning multiple values from functions


func getUser() -> (firstName2: String, lastName: String) {
    (firstName2:"Keanu", "Reeves")
}

let (firstName2, _) = getUser()
print("Name: \(firstName)")


// =================  Cutomizing parameter labels

func isUppercase(_ string: String) -> Bool{
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result = isUppercase(string)

func printTimesTable2( for number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable2(for: 5)


// =================  Providing default values for parameters

func greet(_ person : String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")


// =================  Handle errors in functions

enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String{
    if password.count < 5{
        throw PasswordError.short
    }
    
    if password == "12345"{
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating : \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error")
}


// =================  Closures


let sayHello = { (name:String) -> String in
    "Hi, \(name)!"
}


let team = ["Khai", "Leya", "JJ"]

let onlyTeam = team.filter{ $0.hasPrefix("L")}
print(onlyTeam)


// =================  Structs

struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary(){
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale(){
        isReleased.toggle()
    }
}
let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()


// ================= Computed Properties


struct Employee{
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    
    var vacationRemaining: Int{
        get{
            vacationAllowed - vacationTaken
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// =================  Property Observers

struct Game {
    var scoreBoard = 0{
        didSet{
            print("Score is now \(scoreBoard)")
        }
    }
}


var game = Game()
game.scoreBoard += 1
game.scoreBoard -= 3


// =================  Custom Initializers

struct Player {
    let name: String
    let number: Int
    
    init (name:String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// =================  Access Control

// private
// private set
// file private
// public




