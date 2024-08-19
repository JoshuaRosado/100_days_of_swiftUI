import UIKit
import Foundation

// HOW TO PROVIDE DEFAULT VALUES FOR PARAMETERS


// how to add a default value for a parameter
// use   ValType " = Value "
func printTimesTables(for number: Int, end: Int = 10) { // if end: value is not assigned, it will stay as default
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5, end: 6)
printTimesTables(for: 5) // end = to default value



var characters = ["Leya", "Khai", "Lexi", "JJ"]
print(characters.count)
characters.removeAll(keepingCapacity: true)  // keeps capacity. able array to hold                                                      capacity of 4
print(characters.count)
