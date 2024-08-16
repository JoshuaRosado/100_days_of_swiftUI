import UIKit
import Foundation

// HOW TO USE A FOR LOOP TO REAPEAT WORK


let platform = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platform{
    print("Swift works great on \(os)")
}


//To make things easier to understand, we give these things common names:

//--- We call the code inside the braces the loop body
//--- We call one cycle through the loop body a loop iteration.
//--- We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.


for i in 1...12{
    print("5 x \(i) is \(5 * i )")
}

//A couple of things are new there, so let’s pause and examine them:
//
//I used the loop variable i, which is a common coding convention for “number you’re counting with”. If you’re counting a second number you would use j, and if you’re counting a third you would use k, but if you’re counting a fourth maybe you should pick better variable names.
//The 1...12 part is a range, and means “all integer numbers between 1 and 12, as well as 1 and 12 themselves.” Ranges are their own unique data type in Swift.
//So, when that loop first runs i will be 1, then it will be 2, then 3, etc, all the way up to 12, after which the loop finishes.


// ==== NESTED LOOPS

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    print()
}


for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}




var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate "
}
print(lyric)

