import UIKit
import Foundation


// CONTROLLING THE ANIMATION STACK



import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle() // toggle the var
            
        }
        
        // .animation ORDER MATTERS
        
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red) // if var is true = blue, otherwise = red
        .foregroundStyle(.white)
        
        // .animation will apply to every line of code above it
        // .animation(.nil, value: enabled) = DO NOT ANIMATE the lines above
        .animation(.default, value: enabled)
        // any modifier below the animation will not have the animation
        
        
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0)) // if var is true = cornerRadius of 0, otherwise  = cornerRadius of 60
        // Adding a different animation for a different modifier
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
        
        
    }
}

#Preview {
    ContentView()
}
