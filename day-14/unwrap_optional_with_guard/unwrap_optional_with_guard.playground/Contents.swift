import UIKit
import Foundation

// HOW TO UNWRAP OPTIONALS WITH GUARD

func printSquare(of number: Int?) {
    guard let number = number else{
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 2 )




var myVar: Int? = 3

if let unwrapped = myVar{
    // run if myVar has a value inside
}

guard let unwrapped = myVar else{
    // run if myVar doesn't have a value inside
}


// 1. Swift requires you to use return if a guard check fails.
// 2. If the optional you are unwrapping has a value, you can use it after the guard code finishes.
