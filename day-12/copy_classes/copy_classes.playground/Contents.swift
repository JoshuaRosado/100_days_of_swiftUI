import UIKit
import Foundation

// HOW TO COPY CLASSES

// CLASSES are called references types
// If one copy is updated, the rest will be updated. References Type
// REFERENCE TYPE = it refers to...


// STRUCT "DO NOT" share their data amongs their copies
// VALUE TYPE = OWN VALUE


class User{
    var username = "Anonymous"
    // how to make a DEEP COPY 
    func copy() -> User{
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Khai" // updating user2.username will ALSO update user1.username

print(user1.username)
print(user2.username)
