import UIKit
import SwiftUI

// Storing user settings with UserDefaults


//Now, I mentioned that SwiftUI provides an @AppStorage property wrapper around UserDefaults, and in simple situations like this one it’s really helpful. What it does is let us effectively ignore UserDefaults entirely, and just use @AppStorage rather than @State, like this:
struct ContentView1: View {
    @AppStorage("tapCount") private var tapCount = 0

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView: View {
    
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
            
            UserDefaults.standard.set(tapCount, forKey: "Tap")
            
            // UserDefaults.standard:
            
            //We need to use UserDefaults.standard. This is the built-in instance of UserDefaults that is attached to our app, but in more advanced apps you can create your own instances. For example, if you want to share defaults across several app extensions you might create your own UserDefaults instance.
            
            // set():
            
            //There is a single set() method that accepts any kind of data – integers, Booleans, strings, and more.
            
            
            //We attach a string name to this data, in our case it’s the key “Tap”. This key is case-sensitive, just like regular Swift strings, and it’s important – we need to use the same key to read the data back out of UserDefaults.
        }
        
    }
}

#Preview {
    ContentView()
}
