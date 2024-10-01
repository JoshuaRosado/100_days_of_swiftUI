import UIKit
import Foundation

// Showing and hiding views with transitions

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack{
            Button("Tap Me"){ // when tapping the button
                withAnimation{ // with animation
                    isShowingRed.toggle() // toggle var
                }
            }
            if isShowingRed{ // if Bool is true
                Rectangle() // create a rectangle
                    .fill(.red) // filled with red color
                    .frame(width: 200, height: 200) // this size
                    .transition(.asymmetric(insertion: .scale, removal: .opacity)) // with scale transition effect when appears and opacity(fading) effect when disappears
            }
        }
    }
}

#Preview {
    ContentView()
}

