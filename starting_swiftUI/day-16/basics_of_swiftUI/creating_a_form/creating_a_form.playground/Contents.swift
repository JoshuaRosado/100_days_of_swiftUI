import UIKit
import Foundation

// HOW TO CREATE A FORM IN SWIFTUI

//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form { // creates a form
            Section { // divide group of codes by section
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            Section {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
    }
}

#Preview {
    ContentView()
}
