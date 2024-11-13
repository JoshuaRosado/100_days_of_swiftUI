import UIKit



import SwiftUI


// If we want to have PROPERTIES IN MULTIPLE VIEWS, we want to USE CLASS instead of Struct

// In CLASS - multiple owners
// CLASSES = Variable
// STRUCT = Constant
// In STRUCT - everything changes


@Observable // EXPLANATION in next Chapter

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
