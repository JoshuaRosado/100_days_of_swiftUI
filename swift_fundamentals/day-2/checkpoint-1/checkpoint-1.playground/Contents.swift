import UIKit
import Foundation
//
//You already know enough to start writing your first useful code, albeit fairly simple: we’re going to convert temperatures from Celsius to Fahrenheit.
//
//Your goal is to write a Swift playground that:
//
//Creates a constant holding any temperature in Celsius.
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//Prints the result for the user, showing both the Celsius and Fahrenheit values.
//You already know everything you need to solve that problem, but if you’d like some hints then I’ll add some below.

//Creates a constant holding any temperature in Celsius.
let celsius = 22
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
let fahrenheit = ((celsius * 9) / 5) + 32
//Prints the result for the user, showing both the Celsius and Fahrenheit values.
//print(" Celsius: \(celsius), Fahrenheit: \(fahrenheit)")


// myPractice
// Create a function that converts the temperature input. From C to F, or from F to C depending on the classification you type in the tempScale



let f = "fahrenheit"
let c = "celsius"
func temperatureConvertion(temperature: Int, ConvertTo: String) -> Int{
    var newTemperature = 0
    if ConvertTo == f {
        var newTemperature = ((temperature * 9) / 5 ) + 32
        print("\(c) : \(temperature) = \(f): \(newTemperature)")
    } else if ConvertTo == c {
        var newTemperature = ((temperature - 32) * 5 / 9 )
        print("\(f) : \(temperature) = \(c): \(newTemperature)")
    }
    return newTemperature
}

temperatureConvertion(temperature: 80 , ConvertTo: f ) // FROM CELSIUS TO FAHRENHEIT

temperatureConvertion(temperature: 26 , ConvertTo: c ) // FROM FAHRENHEIT TO CELSIUS
