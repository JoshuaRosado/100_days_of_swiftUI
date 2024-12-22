import UIKit

// Making your navigation title editable



import SwiftUI



struct ContentView: View {
    // Passing a Binding to a string in NavigationTitle
    @State private var title = "SwiftUI"
    // Being @State, while using .inline, title can be EDITABLE
    
    var body: some View {
        NavigationStack{
            Text("Hello, world!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
    }
    }
}
    

#Preview {
    ContentView()
}
