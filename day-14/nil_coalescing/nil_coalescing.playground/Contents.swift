import UIKit
import Foundation

// HOW TO UNWRAP OPTIONALS WITH NIL COALESCING

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"

]
// if Key has a value inside return value
// if is nill return N/A
let new = captains["Serenity"] ?? "N/A" // N\A
let new1 = captains["Enterprise", default: "N/A"] // Picard


let tvShows = ["Archer", "Babylon 5 ", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct Book{
    let title: String
    let author: String?
}


let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
