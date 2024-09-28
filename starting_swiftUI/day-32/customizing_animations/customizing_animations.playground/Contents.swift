import UIKit
import Foundation


// Customizing Animations in SwiftUI

import SwiftUI

struct ContentView: View {

    @State private var animationAmount = 1.0
    var body: some View {
        Button("tap me") {

        }
        
        // Customizing the Button
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)

        // Customizing Animation
        
        
        // animationAmount = 2...1
        
        .overlay( // BUTTON MODIFIER
            Circle() // Creates a new Circle Shape (built in struct)
                .stroke(.teal) // add stroke effect and set color
                .scaleEffect(animationAmount)// animationAmount = 2...1
                .opacity(2 - animationAmount)// animationAmount = 2...1
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount)// animationAmount = 2...1
        )
        .onAppear{ // when app is visible
            animationAmount = 2 // going from 2 to the original var 1 to make the scale animation inside out
        }
        
        
    }
}

#Preview {
    ContentView()
}

