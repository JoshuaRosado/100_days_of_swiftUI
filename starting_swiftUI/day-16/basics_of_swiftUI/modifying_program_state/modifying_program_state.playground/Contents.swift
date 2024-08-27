import UIKit
import Foundation

// HOW TO MODIFY PROGRAM STATE


//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    // use private to signal they are only made and use here
    @State private var tapCount = 0 // @State works like a "mutating" keyword. Without it we can't update the var because is inside a Struct (VALUE TYPE) is a constant.
    
    var body: some View {
        Button("Tap count: \(tapCount)"){ // Button to tap
            tapCount += 1 // increase number on every tap
        }
        Text("Tap to increase the number as fast as you can")
        
    }
}

#Preview {
    ContentView()
}


