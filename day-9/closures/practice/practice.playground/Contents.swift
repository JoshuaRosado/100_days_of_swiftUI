import UIKit
import Foundation


// CLOSURES PRACTICE

let resultMessage = {(string: String) -> String in
    string
}

let checkResult = {(a: Int, b: Int) -> Int in
    print(resultMessage(String(a + b)))
    return a + b
}

checkResult(5, 10)

//---------------------------------------------------------
// Practice with TRAILING CLOSURES

let sports = ["basketball", "surfing", "boxing", "skateboarding"]
let letters = ["a", "b", "c", "d" ,"e"]

// ==== ARRAY .sorted()

let reverseLetter = letters.sorted { $0 > $1 } // less is greater == (REVERSE)
print(reverseLetter)
let reverseSports = sports.sorted {$0 > $1} // less is greater == (REVERSE)
print(reverseSports)

// ==== ARRAY .filter()

let sportsStartingWithB = sports.filter {$0.hasPrefix("b")} // filter by { if beginning of word starts with letter "b"
print(sportsStartingWithB)
let sportsEndingwithG = sports.filter {$0.hasSuffix("g")}
print(sportsEndingwithG)

// ==== ARRAY .map()

let uppercaseSports = sports.map { $0.uppercased()}
print(uppercaseSports)



// ==== Practice with ACCEPT FUNC AS PARAMETERS


func generateNum() -> Int{
    Int.random(in: 1...20)
}
 
func makeNewNums(size: Int ,using generator: () -> Int) -> [Int]{
    var newList = [Int]()
    
    for i in 0...size{
        newList.append(i)
        
    }
    return newList
    
}

let newNums = makeNewNums(size: 20, using : generateNum)
print(newNums)
