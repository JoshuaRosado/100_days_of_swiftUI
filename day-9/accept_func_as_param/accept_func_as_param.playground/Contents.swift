import UIKit
import Foundation

// HOW TO ACCEPT FUNCTIONS AS PARAMETERS


// func name(size: number, using function: () -> return type) -> return type
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    // size: Int, using generator func: () -> Int) -> Array of Int
    var numbers = [Int]() // empty array
    
    for _ in 0..<size { // for each iteration from 0 to the size INPUT
        let newNumber = generator() // run function
        numbers.append(newNumber) // append new number from function into the empty array
    }
    return numbers
}



func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)



// === Multiple functions

// 3 functions parameter

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void){
    print("Start first work")
    first()
    print("Start second work")
    second()
    print("Start third work")
    third()
    print("Done!")
    
}

// 3 TRAILING CLOSURES!!!

doImportantWork{
    print("First")
} second: {
    print("Second")
} third: {
    print("Third")
}

// OUTPUT :
//Start first work
//First
//Start second work
//Second
//Start third work
//Third
//Done!
