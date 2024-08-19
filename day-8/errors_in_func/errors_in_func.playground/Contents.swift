import UIKit
import Foundation

// HOW TO HANDLE ERRORS IN FUNCTIONS
// 3 STEPS TO HANDLE ERROR IN FUNCTIONS

// ---- step 1
// Define all the errors that might happen in the code we are writing

// ----- step 2
// Write a function that works as normal, but that can throw an error if a serious problem is found

// ----- step 3
// Run that function and handle every problem that is found


// Example
// Check if password is short, obvious or returns an error

// Step 1

enum PasswordError: Error {
    case short, obvious
}

// Step 2

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Step 3

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error")
    // \(error.localizedDescription) --- use for Swift local errors
}



// ---- myPractice
// need a person that is older than 18, is bilingual and has a passport


// step 1 (possible errors)

enum requirementError: Error{
    case youngerThan18, notBilingual, noPassport
}

// step 2 ( func that returns an error )

func checkRequirement(age:Int, bilingual: Bool, passport: Bool) throws -> String{
    if age < 18 { throw requirementError.youngerThan18 }
    if bilingual  == false { throw requirementError.notBilingual}
    if passport == false {throw requirementError.noPassport }
    return "Qualified"
}

// step 3 ( run this func catch and handle all the errors )


let myAge = 23
let imBilingual = true
let havePassport = true

do {
    let checkResult = try checkRequirement(age: myAge, bilingual: imBilingual, passport: havePassport)
    print("You application status : \(checkResult)")
} catch {
    print("You are missing some requirements")
}


// myPractice 2
// need a unique pin number

// step 1 ( possible errors)

enum pinError: Error{
    case short, easy, long
}

// step 2 ( func that returns errors )

func checkPin(pin: String) throws -> String{
    if pin.count < 4 {throw pinError.short}
    if pin  == "1234" || pin == "0000" { throw pinError.easy}
    if pin.count > 4 { throw pinError.long}
    
    return "Excellent"
}

// step 3 ( run func, catch and handle errors )

let myPin = "00000"

do {
    let theResult = try checkPin(pin: myPin)
    print("Result : \(theResult)")
} catch {
    print("Please try again, pin number is to \"\(error)\"")
}
