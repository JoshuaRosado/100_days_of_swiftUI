import UIKit
import Foundation

// ANIMATING BINDING



import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        
        print(animationAmount) // using print to text if the value is updating
        
        // We have to have RETURN so SWIFTUI knows this is whats going to be sent back to view
        
        return VStack {
            // Counter to adjust animationAmount from 1-10
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1 // add 1 each tap
            }
                .padding(40)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .scaleEffect(animationAmount)// scaleEffect will be updating with the value
                .animation(.default, value: animationAmount)
        }
     
    }
}

#Preview {
    ContentView()
}

