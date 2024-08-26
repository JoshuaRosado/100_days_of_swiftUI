import UIKit
import Foundation

// HOW TO WORK WITH VARIABLES INSIDE CLASSES

class User {
    var name = "Khai"
}

var user = User()
user.name = "Leya"
print(user.name) // Leya
user = User() // new instance = Default name
print(user.name) // Khai

let user1 = User()
user.name = "JJ"



// constant = Can NOT change
// variable = Can change



