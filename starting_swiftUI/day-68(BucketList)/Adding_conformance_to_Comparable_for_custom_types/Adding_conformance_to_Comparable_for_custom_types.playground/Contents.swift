
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
        User(firstName: " Elvis", lastName: "Presley"),
        User(firstName: " Ilia", lastName: "Topuria"),
        User(firstName: " Bob", lastName: "Marley")
    ] // .sorted {
    //$0.lastName < $1.lastName
    
    var body: some View {
        List(users){ user in
            Text("\(user.lastName),\(user.firstName)")
        }
    }
}

#Preview {
    ContentView()
}
