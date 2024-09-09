import UIKit
import Foundation

// VIEW COMPOSITION

import SwiftUI

struct CapsuleText: View{ // create a struct of Capsule Text
    var text: String // showing a text
    
    var body: some View { // with the body
        Text(text) // Text will show text with all the modifiers down below
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10){
            CapsuleText(text:"First") // use struct(showing text : " Text entered"
            CapsuleText(text:"Second")
        }

    }
}

#Preview {
    ContentView()
}
