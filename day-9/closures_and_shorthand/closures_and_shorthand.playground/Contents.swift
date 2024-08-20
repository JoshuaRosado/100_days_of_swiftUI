import UIKit
import Foundation


// HOW TO USE TRAILING CLOSURES AND SHORTHAND SYNTAX


let team = ["Basketball", "Surfing", "Skateboarding"," Volleyball"]

let sorted = team.sorted(by: {(a: String, b: String) -> Bool in
    if a == "Surfing"{
    } else if b == "Surfing"{
        return false
    }
    return a < b
})

// ==== SHORTHAND SYNTAX

let sorted2 = team.sorted {
    if $0 == "Surfing" {
        return true
    } else if $1 == "Surfing"{
        return false
    }
    return $0 < $1
    
}

// ==== READIBLE SHORTHAND SYNTAX

let reverseTeam = team.sorted {$0 < $1}



// ***** USE SHORTHAND IF 3 THINGS ARE NOT TRUE

// 1)- Closure body is long
// 2)- $0, $1, etc are repeated multiple time
// 3)- 3 or more parameter


// ==== MORE UNDERSTANDIBLE EXAMPLES
let word = ["viking", "beach", "sword", "arrow"]
let vOnly = word.filter { $0.hasPrefix("V")}
// using the .filter func, looking to see if trailing index is "V"
print(vOnly)

let uppercaseword = word.map { $0.uppercased()}
print(uppercaseword)

