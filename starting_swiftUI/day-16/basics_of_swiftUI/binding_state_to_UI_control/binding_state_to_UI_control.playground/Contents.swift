import UIKit
import Foundation

// HOW TO BIND STATE TO UI CONTROLS

//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        Form {
            // input name
            TextField("Enter you name", text: $name) // Have to use $ before the variable so SwiftUI can read it.
            Text("Your name is \(name)")
        }
        
    }
}

#Preview {
    ContentView()
}
