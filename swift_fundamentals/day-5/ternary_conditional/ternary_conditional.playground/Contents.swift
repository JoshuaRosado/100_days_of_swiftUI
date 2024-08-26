import UIKit
import Foundation

//HOW TO USE THE TERNARY CONDITIONAL OPERATOR FOR QUICK TESTS


// 2 + 5 ( + , -, /, * )
// BINARY = "Has 2 pieces of input"

// TERNARY = "Has 3 pieaces of input"

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
// ----------[    W     ] [ T ]  [ F ]
//-----------[   WHAT?  ] [TRUE] [FALSE]

let canVote1 = age >= 18 ? "Yes" : "No"
// # 1 [ age >= 18 ]   --- is age is equal or greater than 18
// # 2 ["Yes"] --- something to send back IF condition # 1 is ** TRUE **
// # 3 ["No"] --- somthing to send back IF condition # 1 is ** FALSE **


let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : " \(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)




let last_name = "Rosad"

print(last_name == "Rosado" ? "We are family": "We're not related")
