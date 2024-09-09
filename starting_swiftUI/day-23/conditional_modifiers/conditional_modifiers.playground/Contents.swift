import UIKit
import Foundation

// CONDITIONAL MODIFIERS


let age = 18
let canVote = age >= 18 ? "Yes" : "No"
// WTF = WHAT VALUE, TRUE, FALSE





import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello, world!"){ // when button is pressed
            useRedText.toggle() // toggle bool useRedText
        }
        .foregroundColor(useRedText ? .red : .blue) // if bool is true (turn red) if false (turn blue) 

    }
}

#Preview {
    ContentView()
}
