import UIKit

import SwiftUI



// Showing and hiding Views




// Second View
struct SecondView: View {
    // dismiss Environment - to dismiss View
    @Environment(\.dismiss) var dismiss
    let name : String
    @State private var showingThirdSheet = false
    var body: some View{
        Text("Hello \(name)")
        Button("Show 3rd Sheet"){ // Btn to show 3rd sheet
            showingThirdSheet.toggle()
            
        }
        Button("Dismiss"){ // Button to dismiss View
            dismiss()
        }
        .sheet(isPresented: $showingThirdSheet){ // if showingThirdSheet = True
            
            // DISPLAY:
            ThirdView(name:"Cataleya")
        }
    }
}

struct ThirdView: View {
    // dismiss Environment - to dismiss View
    @Environment(\.dismiss) var dismiss
    let name : String
    var body: some View{
        Text("How are you \(name)?")
        
        Button("Dismiss"){ // Button to dismiss View
            dismiss()
        }
        
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    @State private var showingThirdSheet = false
    
    
    var body: some View {
        Button("Show Sheet"){ // Button to toggle showingSheet to display View
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){ // sheet is presented when showingSheet = True
            
            // display SecondView
            SecondView(name: "Khai")
        }
    }
}

#Preview {
    ContentView()
}
