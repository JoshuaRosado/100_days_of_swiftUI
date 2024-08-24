import UIKit
import Foundation

// HOW TO GET THE MOST FROM PROTOCOL EXTENSIONS
// Numeric = Includes all numerical types

// Self = current TYPE
// self = current VALUE
extension Numeric {
    func squared() -> Self { // returns self
        self * self // it multiplies current Int value by itself
    }
}

let wholeNumber = 5
print(wholeNumber.squared())


struct User: Comparable{
    let name: String
    
    // lhs = left hand side
    // rhs = righ hand side
    static func < (lhs: User, rhs: User) -> Bool{
        lhs.name < rhs.name
    }
    
}

let user1 = User(name: "Mario")
let user2 = User(name: "Zelda")
print(user1 == user2)
print(user1 != user2)
print(user1 < user2)
print(user2 < user1)
