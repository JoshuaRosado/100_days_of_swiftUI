import UIKit
import Foundation

// HOW TO CREATE VIEWS IN A LOOP

//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    let student = ["Harry", "Hermoine", "Ron"]
    @State private var selectedStudent = "Harry" // @State = is going to change
    var body: some View {
        NavigationStack{ // Navigation Bar
            
            
            Form {
                // Picker = Select Option
                Picker("Select your student", selection: $selectedStudent){
                    ForEach(student, id: \.self)// \.self = unique id. Swift needs to know every object by its unique id
                    {
                        Text($0)
                    }
                
                }
            }
            .navigationTitle("Select a Student") // Nav bar title
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
        
    }

#Preview {
    ContentView()
}



