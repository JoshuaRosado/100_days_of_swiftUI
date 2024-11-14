import UIKit


// Sharing SwiftUI state with @Observable

import Observation
import SwiftUI


//If you use @State with a struct, your SwiftUI view will update automatically when a value changes, but if you use @State with a class then you must mark that class with @Observable if you want SwiftUI to watch its contents for changes.

@Observable // = Tells SwiftUI to Look at the properties inside the View and reload any View that relie s in a property when it changes

class User {
    var firstName = "Bilbo"
    var lastName = "Bagging"
}

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
