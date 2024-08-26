import UIKit
import Foundation

// HOW TO REUSE CODE WITH FUNCTIONS

// declare a function using the keyword "func" follow by () {code logic}


//parameters = PP = Place Holder
//arguments = AA = Actual Value

func printTimesTables(number: Int, end: Int){ // parameters
    for i in 1...end{
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20) // calling the function and passing arguments

