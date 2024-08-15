import UIKit
import Foundation


// HOW TO USE SWITCH STATEMENT TO CHECK MULTIPLE CONDITIONS

enum Weather {
    case sun, rain, wind, snow, unkown
}

let forecast = Weather.rain
//
//if forecast == .sun{
//    print("Sunny Day")
//} else if forecast == . rain{
//    print("Rainy day")
//} else if forecast == . wind{
//    print("Windy day")
//} else if forecast == . rain{
//    print("More rain")
//} else {
//    print("Our forecast generator is broken")
//}


// --- We are repeating forecast every single time

// ==== USING SWITCH

switch forecast {
case .sun:
    print("Sunny Day")
case .rain:
    print("Rainy day")
case .wind:
    print("Windy Day")
case .snow:
    print("Snowww!")
case .unkown:
    print("Our forecast generator is broken")
}



let place = "Virginia"

switch place{
    
case "Virginia":
    print("Virginia Beach")// it will end here because place equals to "Virginia"
case "North Carolina":
    print("New Bern")
default:                    // switch must be exhaustive. NEED to add "default:" at the end
    print("Where should we move?")
}


// USING FALLTHROUGH will let the statement continue with the next case
//ALLOWING THE STATEMENT TO continue even if the correct case was found
let day = 5
print("My true love game to me")
switch day {
case 5:
    print("5 golden rings")// day = 5... it should end here.
    fallthrough // but we are allowing it to continue by using "fallthrough"
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
