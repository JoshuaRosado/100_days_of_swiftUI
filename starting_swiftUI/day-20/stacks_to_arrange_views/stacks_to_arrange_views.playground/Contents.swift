import UIKit
import Foundation

// USING STACKS TO ARRANGE VIEWS

import SwiftUI
// 3 types for STACKS
// HStack = Horizontal
// VStack = Vertical
// ZStack = Moves views from top to bottom or viceversa

struct ContentView: View {
    var body: some View {
//        VStack(spacing:20) giving a default spacing between text
        
//        HStack(spacing: 20){
//            Text("Hello ")
//            Text("This is another text view")
//        }
        ZStack(alignment: .bottom){
            Text("Hello World")
//            Text("Swift")
        }
        
//        VStack {
//            Spacer() // SPACER () = to creating a space where the code is situated
//            Text("First")
//            Text("Second")
//            Text("Third")
//
//            Spacer()
//            Spacer()
//        }
        
        // Vertical Stack with alignment of .leading(left)
//        VStack(alignment: .leading) {
//            Text("Hello World")
//            Text("This is another text view")
//        }

    }
}

#Preview {
    ContentView()
}
