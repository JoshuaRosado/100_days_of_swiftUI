import UIKit
import Foundation

// USING STACKS TO ARRANGE VIEWS


// 3 types for STACKS
// HStack = Horizontal
// VStack = Vertical
// ZStack = Moves views from top to bottom or viceversa

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Vertical Stack( with alignment of .leading( = start/ left)
        VStack(alignment: .leading){
            Image(systemName: "flag")
            Text("Guess the flag")
        }
        .padding()
        // Horizontal Stack ( with spacing of 20 pts )
        HStack(spacing: 20){
            Text("What flag is this?")
            Text("Country:")
        }
        ZStack{
            Image(systemName: "globe")// behind the text
            Text("What was your score") // front of the image
        }
    }
}




#Preview {
    ContentView()
}
