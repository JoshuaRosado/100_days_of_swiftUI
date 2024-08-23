import UIKit
import Foundation

//HOW TO MAKE ONE CLASS INHERIT FROM ANOTHER


// PARENT CLASS

class Employee{
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}


// CHILD CLASS
class Developer: Employee{
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day")
    }
}

// CHILD CLASS
class Manager: Employee{
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


// myPractice


class Apple {
    var softwareVersion : String
    var model: String
    var contacts = [String]()
    
    init(softwareVersion: String, model: String, contacts: [String]) {
        self.softwareVersion = softwareVersion
        self.model = model
        self.contacts = contacts
    }
    
    func itemDescription(){
        print("Model: \(model)")
    }
    
}

class iPhone: Apple{
    func call(){
        print("Calling \(contacts)")
    }
}


// keyword FINAL is use for "When you know there won't be another inheritance"

final class Macbook: Apple{ // USING
    override func itemDescription() {
        print("This is a Macbook \(model). Current software version: \(softwareVersion) ")
    }
    func sendEmail(){
        print("I'm sending an email to \(contacts[1])")
    }

}

let myContacts = ["Khai", "Leya", "JJ", "Lexi"]
let myMacbook = Macbook(softwareVersion: "Sonoma 14.5", model: "Pro M1", contacts: myContacts)

myMacbook.itemDescription()
myMacbook.sendEmail()


