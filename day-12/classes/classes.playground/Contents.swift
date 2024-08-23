import UIKit
import Foundation

// HOW TO CREATE YOUR OWN CLASSES

// STRUCT VS CLASSES

//---- SIMILARITIES

// -  You get to create and name them
// - Add porperties, methods, property observers and access control.
// - Create custom initializers to configure new instances.

// ---- DIFERENCES

// - You can make one class build upon functionality in another class.
// - Swift won't generate a memberwise initializer for classes.
// - If you copy an instance of a class, both copies share the same data. ***
// - We can add a deinitializer to run when the final copy is destroyed.
// - Constant class instances can have their variable properties changed


// *** Swift often uses classes cause of this point

// THIS EXAMPLE shows how classes and structs look so alike

class Game {
    var score = 0{
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


struct Game1 {
    var score = 0{
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame1 = Game1()
newGame1.score += 10
