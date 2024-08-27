import UIKit
import Foundation

// HOW TO ADD A NAV BAR


//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{ // adding a nav bar NavigationStack
            // it won't be visible until it's given a title
            
            Form {
                Section {
                    Text("Hello, World!")
                    
                }
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            .navigationTitle("SwiftUI") // Giving the NavigationStack a title
            .navigationBarTitleDisplayMode(.inline) // Customizing the title display mode by using ".inline"
        }
    }
}

#Preview {
    ContentView()
}

