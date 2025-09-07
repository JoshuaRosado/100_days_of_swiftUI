import UIKit


// Adding conformance to Comparable for custom types

//
//  ContentView.swift
//  BucketList
//
//  Created by Joshua Rosado Olivencia on 8/31/25.
//

import SwiftUI

struct User: Comparable, Identifiable{ // Add Comparable
    let id = UUID()
    let firstName:String
    let lastName: String
    let occupation: String
    
    
    // lhs = left hand side
    // rhs = right hand side
    // < = operator over loaded
    // static func = is called directly in the User struct itself
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
    
        // Now that our User struct conforms to Identifiable and Comparable, we automatically get accesss to the parameter-less version of sorted()
}

struct ContentView: View {
    let users = [
        User(firstName: " Khai", lastName: "Asher", occupation: "Explorer"),
        User(firstName: " Cataleya", lastName: "Grace", occupation: "Doctor"),
        User(firstName: " Alexis", lastName: "Elizabeth", occupation: "Personal Trainer")
    ] // .sorted {
    //$0.lastName < $1.lastName
    
    var body: some View {
        List(users){ user in
            Text("\(user.lastName),\(user.firstName)")
            Text("\(user.lastName),\(user.firstName)")
            Text("\(user.lastName),\(user.firstName)")
            Text("\(user.lastName),\(user.firstName)")
        }
    }
}

#Preview {
    ContentView()
}

