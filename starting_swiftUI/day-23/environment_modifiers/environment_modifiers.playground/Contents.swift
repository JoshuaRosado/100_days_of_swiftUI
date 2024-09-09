import UIKit
import Foundation

// ENVIRONMENT MODIFIERS

// there are REGULAR MODIFIERS AND ENVIRONMENT MODIFIERS




import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Gryffindor")
                .font(.largeTitle) // locally modified
            // and now the following elements will have this style of modification
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
//        .blur(radius: 5) // REGULAR MODIFIER
        .font(.title) // ENVIRONMENT MODIFIER
        // it modifies all the element inside this VStack
    }
}

#Preview {
    ContentView()
}
