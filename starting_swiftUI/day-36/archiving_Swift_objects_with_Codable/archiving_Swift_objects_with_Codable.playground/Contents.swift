import UIKit


// Archiving Swift objects with Codable




// @AppStorage is great for storing simple settings such as INT and BOL, but when it comes to complex data- custom Swift types, we need to do a litle more work.


import SwiftUI


// Codable: a protocol specifically for archiving and unarchiving data, which is a fancy way of sayin

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Khai", lastName: "Rosado")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
        // When we’re coming back the other way – when we have JSON data and we want to convert it to Swift Codable types – we should use JSONDecoder rather than JSONEncoder(), but the process is much the same.
    }
}

#Preview {
    ContentView()
}
