import UIKit
import Foundation


// Creating Implicit Animations


import SwiftUI

struct ContentView: View {
    // setting a value double
    @State private var animationAmount = 1.0
    var body: some View {
        Button("tap me") { // every time btn is tapped
            animationAmount += 1 // increase the value by 1
            
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        // adding blur x3 every time value is tapped
        // (value - 1 = 0) * 3 = 0) at the beginning there's 0 blur
        // but once value increases the number it will get more and more blur to it
        .blur(radius: (animationAmount - 1) * 3)
        // adding default animation every time "value" is updated
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    ContentView()
}
