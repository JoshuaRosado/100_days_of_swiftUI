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
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in : 0...20)
            
            Button("Random Blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
