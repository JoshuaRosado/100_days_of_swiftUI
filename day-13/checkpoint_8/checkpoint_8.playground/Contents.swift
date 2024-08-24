import UIKit
import Foundation

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
//
//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.


protocol Building{
    var roomCount: Int {get set}
    var cost: Int {get set}
    var estateAgent : String {get}
    
    func salesSummary()
    
}

extension Building{
    func forSaleSoon(){
        print("This property will be in sale soon")
    }
}


struct House: Building{
    var roomCount =  4
    var cost = 300_000
    var estateAgent = "John Travolta"
    
    func salesSummary() {
        print("Price of this house is $\(cost). It has \(roomCount) rooms and the is under  \(estateAgent) estate agent")
    }
}

struct Office: Building{
    var roomCount = 17
    var cost = 750_000
    var estateAgent = " Adam Sandler"
    
    func salesSummary() {
        print("Price of this office is $\(cost). It has \(roomCount) rooms and the is under \(estateAgent) estate agent")
    }
}

var singleFamilyHouse = House(roomCount: 5, cost: 420_000, estateAgent: "Jason Momoa")
var commercialMedicalOffice = Office(roomCount: 11, cost: 950_200, estateAgent: "Dr.House")

singleFamilyHouse.salesSummary()
commercialMedicalOffice.salesSummary()
singleFamilyHouse.forSaleSoon()
