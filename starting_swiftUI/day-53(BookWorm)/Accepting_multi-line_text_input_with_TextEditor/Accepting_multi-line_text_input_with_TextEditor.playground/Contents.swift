import UIKit

// Accepting multi-line text input with TextEditor


// SIMPLE "NOTES App"
// Using TextEditor ============================================


// @AppStorage = Is good to store simple things
// IS NOT SECURE to store private information (username,password,etc)

import SwiftUI

struct ContentView: View {
    
    @AppStorage("notes") private var notes = ""
    var body: some View {
        NavigationStack {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
            
        }
    }
}

#Preview {
    ContentView()
}


//==============================================================


// Using TextField =============================================

// @AppStorage = Is good to store simple things
// IS NOT SECURE to store private information (username,password,etc)

import SwiftUI

struct ContentView2: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            // Using axis will help to expand the TextField to be displayed in multiple lines
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
            
        }
    }
}

#Preview {
    ContentView2()
}

