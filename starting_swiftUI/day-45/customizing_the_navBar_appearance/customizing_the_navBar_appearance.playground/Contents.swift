import UIKit

// Customizing the NavBar appearance


struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            // navbar background color
            .toolbarBackground(.blue)
            // applying colorScheme for text in navbar
            .toolbarColorScheme(.dark)
            // making navbar hidden, for: Specify navbar
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}
    

#Preview {
    ContentView()
}
