import UIKit
import Foundation


// HOW TO CREATE AND USE PROTOCOL EXTENSIONS

// COLLECTION = Array, Dictionary, Tuple

extension Collection {
    var isNotEmpty : Bool{
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty{
    print("Guest count : \(guests.count)")
}
    

protocol Person {
    var name : String {get}
    func sayHello()
}

// default implementation
extension Person{
    func sayHello(){
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person{
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
