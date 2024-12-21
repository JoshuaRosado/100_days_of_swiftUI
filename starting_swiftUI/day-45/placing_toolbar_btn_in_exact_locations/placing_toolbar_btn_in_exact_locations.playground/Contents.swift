import UIKit

// Placing toolbar buttons in exact locations

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            Text("Hello, World")
                .toolbar{
                    //**** SINGULAR - Specifying exact placement location
                    ToolbarItem(placement: .topBarLeading){
                        Button("Tap me"){
                            // button action
                        }
                    }
                }
            
                .toolbar{
                    // **** PLURAL - Specifying exact placement location
                    ToolbarItemGroup(placement: .topBarLeading){
                        Button("Tap me"){
                            // button action
                        }
                        Button("Next"){
                            
                        }
                    }
                }
            }
        }
}
    

#Preview {
    ContentView()
}

