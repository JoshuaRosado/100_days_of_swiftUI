import UIKit
import Foundation

// Creating Explicit Animations

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {

            Button("Tap Me") {
                // when button is tapped
                // with Animation
                withAnimation(.spring(duration: 1, bounce: 0.3)){
                    // update the value from 0 to 360
                    animationAmount += 360
                    // this value is the one used for the rotation3DEffect as degrees.
                }
                
            }
                .padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
        
        // ROTATION
        // rotation3DEffect(.degrees(INT), axis: (x:INT, y: INT, z: INT)
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 2))
     
    }
}

#Preview {
    ContentView()
}


