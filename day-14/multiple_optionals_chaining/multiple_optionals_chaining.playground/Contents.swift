import UIKit
import Foundation

// HOW TO HANDLE MULTIPLE OPTIONLAS USING OPTIONAL CHAINING

let names = ["Khai", "Leya", "JJ", "Lexi"]
// if optional has a value inside, unwrap it and then .uppercased()
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line : \(chosen)")



struct Book {
    let title: String
    let author : String?
}

var book : Book? = nil

let author = book?.author?.first?.uppercased() ?? "A"
// if we have book, and the book has an author, and author has a first letter in the name
// then uppercased it and send it back
// if any of the first optionals are nil return "A"
print(author)
