import UIKit
import SwiftUI


// How property wrappers become structs

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0{
        // Do this when value updates
        didSet {
            print("New value is \(blurAmount)")
        }
        
    }
    var body: some View {
        VStack {
            Text("Hello, world!")
                // set blur radius to be this value
                .blur(radius: blurAmount)
            
            // use a slider to update de value: INT between 0 and 20
            Slider(value: $blurAmount, in : 0...20)
            
            // add a random button, when is tapped it will update the value to a random INT
            Button("Random Blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
