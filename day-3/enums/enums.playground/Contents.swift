import UIKit
import Foundation

// HOW TO CREATE AND USE ENUMS

// ENUMERATION = ENUMS

// multiple related values


// ---- OPTION 1
//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

// ---- OPTION 2
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}


// it does not allow you to overwrite values

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

print(Weekday.monday)
