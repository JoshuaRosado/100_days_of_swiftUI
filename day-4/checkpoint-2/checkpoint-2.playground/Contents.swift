import UIKit
import Foundation


// ===== CHECKPOINT - 2


//This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var nintendoSwitchGames = [String]()

nintendoSwitchGames.append("Super Mario 3D World") // repeated 3 times for assignment
nintendoSwitchGames.append("Super Mario Kart")
nintendoSwitchGames.append("Zelda")
nintendoSwitchGames.append("Super Mario 3D World")
nintendoSwitchGames.append("Tony Hawk Pro Skater 1 & 2")
nintendoSwitchGames.append("Super Mario 3D World")
print(nintendoSwitchGames)

// Print numbers of items in array

print(nintendoSwitchGames.count) // item in array = 6

// Print also the number of unique items in the array.
var repeatedGame = nintendoSwitchGames[0]
for nintendoSwitchGame in nintendoSwitchGames {
    if nintendoSwitchGame != repeatedGame{
        print("Unique Values : \(nintendoSwitchGame)")
    }
}


// Another way of printing count of unique items
// Sets do not allow duplicates
var foodList: Set<String> = Set([
    "Milk", "Water", "Pizza", "Veggies", "Oatmeal","Water", "Water"])
// total of 7 but "Water" is repeated 3 times

print(foodList.count)// 5
