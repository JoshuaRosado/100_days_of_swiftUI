import UIKit
import Foundation

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
//
//But there’s more:
//
//The Animal class should have a legs integer property that tracks how many legs the animal has.
//The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//The Cat class should have a matching speak() method, again with each subclass printing something different.
//The Cat class should have an isTame Boolean property, provided using an initializer


class Animal{
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}
// ====== SUBCLASS OF Animal

class Dog: Animal{
    func speak(){
        print("Bark time!")
    }
}

// ============================== SUBCLASS OF Dog

class Husky:Dog{
    override func speak() {
        print("Wolf howl!!!")
    }
}
class AlaskanMalamuth: Dog{
    override func speak() {
        print("WOOF! WOOF!")
    }
}

// ====== SUBCLASSES OF Animal

class Cat: Animal{
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func matching(){
        print("Meow!")
    }
}

// ============================== SUBCLASS OF Cat

class Persian: Cat{
    override func matching() {
        print("Meow! Meow!")
    }
}

class Lion: Cat{
    override func matching() {
        print("Roar!")
    }
}

// DOGS INSTANCES

let myDog = Husky(legs: 4)
let yourDog = AlaskanMalamuth(legs: 4)
myDog.speak()
yourDog.speak()

// CATS INSTANCES

let myCat = Persian(legs: 4, isTame: false)
let yourCat = Lion(legs: 4, isTame: true)

myCat.matching()
yourCat.matching()
