import UIKit
import Foundation

// HOW TO RETURN VALUES FROM FUNCTIONS

// square root func
let root = sqrt(169)
print(root)


func rollDice() -> Int{
    return Int.random(in: 1...6)
}

//let result = rollDice()
//print(result)

// DO 2 STRINGS CONTAIN THE SAME LETTERS, REGARDLESS OF THEIR ORDER?
// THIS FUNCTION SHOULD:
// - Accept two string parameters
// - Return true if their letters are the same



// --- MY SOLUTION

func sameLetters(a: String, b: String) -> Bool {
    let secondWord = String(b.sorted())
    if secondWord == a {
        return true
    }
    return false
}
let result = sameLetters(a: "abc", b: "cba") // true
//let result = sameLetters(a: "abc", b: "toy") // false
print(result)


// --- PROFESOR'S SOLUTION

// *** the only ocassion that we DO NOT HAVE TO USE the keyword return
// is when the function has a "ONE LINE OF CODE" that returns what it needs

func areLettersIdentical(string1: String, string2: String) -> Bool{
    string1.sorted() == string2.sorted()
}
areLettersIdentical(string1: "abc ", string2: "cba")




func pythagoras(a: Double, b: Double) -> Double{
    sqrt(a * a + b * b) // no need to use keyword return
}

let c = pythagoras(a: 3, b: 5)
print(c)


func sayHello(){
    return // exit immediately
}
