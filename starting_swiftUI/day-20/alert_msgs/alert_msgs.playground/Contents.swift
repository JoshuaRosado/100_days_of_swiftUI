import UIKit

//

// ===== HOW TO SHOW ALERT MESSAGE
// create a bool var

//**** @State private var showingAlert = false
// create a button

// **** Button("Show alert"){ <--- when clicking btn
//showingAlert = true} <---- show alert

// call the function of alert message


// .alert("Message here" , isPresented: $var { <--- when func is called
        // Button("Message here") {} <-------- button dismissed message


//*****  .alert("Important message", isPresented: $showingAlert){
//          Button("OK"){}

// ==== HOW TO ADD MORE BUTTONS AND MESSAGES

//Button("Show alert"){
//    showingAlert = true
//}
//    .alert("Important message", isPresented: $showingAlert){
//        Button("Delete", role: .destructive){}
//        Button("Cancel", role: .cancel){}
//    } message: {
//        Text("Please read this")
//    }



import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert"){
            showingAlert = true
        }
            .alert("Important message", isPresented: $showingAlert){
                Button("Delete", role: .destructive){}
                Button("Cancel", role: .cancel){}
            } message: {
                Text("Please read this")
            }
        
    }
}
#Preview {
    ContentView()
}
