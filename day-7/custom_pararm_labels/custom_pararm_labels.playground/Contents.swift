import Foundation
import Foundation

// HOW TO CUSTOMIZE PARAMETER LABELS


let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))


func isUppercase(_ string: String) -> Bool { // "_"  NO EXTERNAL PARAMETER
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string) // NO EXTERNAL PARAMETER



func printTimesTable(for number: Int){ // for = EXTERNAL PARAM. number = INTERNAL PARAM
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5) // "for: " = EXTERNAL PARAMETER
                        // " 5 " = INTERNAL PARAMETER
