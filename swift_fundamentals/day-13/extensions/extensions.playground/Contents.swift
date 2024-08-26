import UIKit
import Foundation

// HOW TO CREATE AND USE EXTENSIONS

var quote = "    Hello there!  "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)



extension String{
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim(){
        self = self.trimmed()
    }
    var lines: [String]{
        self.components(separatedBy: .newlines)
    }
    
}

quote.trim()


// EXTENSIONS vs FUNC

// extensions:

// 1. Code completion
// 2. Code organization
// 3. Internal access


// WHEN FUNC RETURNS SOMETHING... name of func should end in ___ed()
// example ( sorted(), reversed() )


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    }

extension Book {
    init(title: String, pageCount: Int) {
            self.title = title
            self.pageCount = pageCount
            self.readingHours = pageCount / 50
        }
}
let lotr = Book(title: "Star Wars", pageCount: 1153, readingHours: 0)

print(lotr)
