import UIKit
import Foundation

// STATIC PROPERTIES AND METHODS

struct School{
    static var studentCount = 0
    
    static func add(student: String){
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Khai Asher")
print(School.studentCount)



// CAN "NOT" ACCESS NON-STATIC FROM STATIC
// FROM NON-STATIC YOU CAN READ STATIC

// self = The current value of a struct ... 55, "Hello", true
// Self = The current type of struct ... Int , String, Bool

// organize data

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}


print(AppData.homeURL)


//example data

struct Employee{
    let username : String
    let password : String
    
    static let example = Employee(username: "hello", password: "hellohello")
}

Employee.example





struct Store{
    let name : String
    let product :String
    let price : Double
    private let inStock : Int
    
    //show an example of a Store
    
    static let storeExample = Store(name: "Tech Planet", product: "Headphones", price: 400.99, inStock:1400)
}

print(Store.storeExample)
Store.storeExample
