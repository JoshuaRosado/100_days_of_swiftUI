import UIKit
import Foundation

//HOW TO TAKE ACTION WHEN A PROPERTY CHANGES

// ==== from this

//struct Game {
//    var score = 0
//}
//var game = Game()
//game.score += 10
//print("Score is now \(game.score)")
//game.score -= 3
//print("Score is now \(game.score)")
//game.score += 1

// ==== to this

struct Game {
    var score = 0{
        didSet{ // access that print state EVERY TIME the score changes
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1



// OBSERVERS

// --- willSet = will set this to... SEE BEFORE CHANGING
// --- didSet = was set to... SEE AFTER CHANGED

// willSet lets you use "newValue"
// didSet lets you use "oldValue"

// willSet = trigger WHEN the a value is about to change


struct App {
    var contacts = [String](){
        willSet{
            print("Current value is \(contacts)")
            print("New value is \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Khai")
app.contacts.append("Leya")
app.contacts.append("Lexi")


struct Employee {
    let name : String
    var salary : Int{
        willSet{
            print("Current salary is $\(salary)")
            print("New salary is \(newValue)")
        }
        didSet{
            print("Now I make $\(salary)")
            print("From $\(oldValue)")
        }
    }
}

var person1 = Employee(name: "Khai Asher", salary: 75_000)
person1.salary += 10_000


struct Person{
    var age: Int{
        willSet{
            print("I am \(age) old")
            print("In 24 years I am going to be \(newValue)")
        }
        didSet{
            print("Today I'm \(oldValue) old")
            print("In 24 years I am going to be \(age)")
        }
    }
}

var me = Person(age: 30)
me.age += 24


