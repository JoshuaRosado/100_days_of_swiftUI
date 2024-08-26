import UIKit
import Foundation

// HOW TO SKIP LOOP ITEMS WITH BREAK AND CONTINUE


//Swift gives us two ways to skip one or more items in a loop: continue skips the current loop iteration, and break skips all remaining iterations.


// CONTINUE
// SKIPS A LOOP ITERATION

let filenames = ["me.jpg", "work.txt", "sophpie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false{ // if the value does not have ".jpg"
        continue    // skip that value that does not have .jpg ( we don't need it )
    }
    print("Found picture: \(filename)")
}



// BREAK
// ENDS THE LOOP ITERATION


let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10{ // if the total of numbers in the array reaches 10
            break // end loop
        }
    }
}

print(multiples)
