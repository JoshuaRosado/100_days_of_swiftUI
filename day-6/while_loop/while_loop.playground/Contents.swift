import UIKit
import Foundation

// HOW TO USE A WHILE LOOP TO REPEAT WORK


// ** A while loop will continually execute the loop body until the condition is false.

var countdown = 20

while countdown > 10 {
    print("\(countdown)")
    countdown -= 1
}

print("Number 10!!")


// ===== random(in:)

let id = Int.random(in: 1...10)
print(id)

let amount = Double.random(in: 0...2)
print(amount)



var roll = 0

while roll != 20{ // while roll is not equal to 20
    roll = Int.random(in: 1...20) // keep rolling the dice
    print("I rolled a \(roll)") // print the result
}
// if roll equals to 20, stop while and print
print("Critical hit!")


//You’ll find yourself using both for and while loops in your own code: for loops are more common when you have a finite amount of data to go through, such as a range or an array, but while loops are really helpful when you need a custom condition
