import UIKit
import Foundation

// HOW TO RETURN MULTIPLE VALUES FROM FUNCTIONS


func getUser3() -> (firstName: String, lastName: String) {
    ("Keanu", "Reeves")
}

let user3 = getUser3()
print("Name: \(user3.firstName)") // access through key =    Name: Keanu
print("Name: \(user3.0)") // access through index =          Name: Keanu


func getPlayer() -> (playerName: String, playerNumber: Int) {
    ("Mario", 1)
}

let (playerName, playerNumber) = getPlayer() // cleaner and shorter way
print(playerName)



