import UIKit
import Foundation

// --- HOW TO USE SETS FOR FAST DATA LOOKUP

// no duplicates allowed
// no order
// no use of (.append)
// instead use (.insert)

let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"])

print(actors)

var players = Set<String>()
players.insert("KD")
players.insert("LBJ")
players.insert("Steph Curry")
players.insert("Anthony Edward")

print(players.count)
print(players.contains("KD"))
