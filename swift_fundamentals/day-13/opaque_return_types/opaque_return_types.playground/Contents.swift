import UIKit
import Foundation

// HOW TO USE OPAQUE RETURN TYPES

protocol View {
    
}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())




