import UIKit
import Foundation


// HOW TO ADD INITIALIZERS FOR CLASSES

class Vehicle{
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

//class Car: Vehicle{
//    let isConvertible: Bool
//    init(isElectric: Bool ,isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric)// property of the parent needs "super.init"
//    }
//}

class Car: Vehicle{
    let isConvertible = false
}

let teslaX = Car(isElectric: true)

teslaX.isConvertible // it will still inherit property from parent and the child property will be read
