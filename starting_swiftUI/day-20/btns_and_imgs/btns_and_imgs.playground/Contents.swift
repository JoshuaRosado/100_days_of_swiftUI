import UIKit


// ==== HOW TO CREATE A BUTTON

// Button("nameTag", role: .___, action: _funcName_)

// ==== HOW TO ADD STYLE TO BUTTON

// Button() {}
// button.Style(.__)
// buttonBorderShape(.__)

// ==== DIFFERENT WAYS TO STYLE BUTTON
//
//Button("Btn 1", role: .destructive) {}
//    .buttonStyle(.bordered)
//    .buttonBorderShape(.capsule)

//Button("Btn 2") {}
//    .buttonStyle(.borderedProminent)
//    .buttonBorderShape(.automatic)

//Button("Btn 3") {}
//    .buttonStyle(.bordered)
//    .buttonBorderShape(.circle)

//Button("Btn 4") {}
//    .buttonStyle(.borderedProminent)
//    .buttonBorderShape(.roundedRectangle(radius: 150.4))

// ===== HOW TO ADD COLOR TO THE BUTTON

//Button("Btn 4") {}
//    .buttonStyle(.borderedProminent)
//    .buttonBorderShape(.roundedRectangle(radius: 150.4))
//     .tint(.color) <-------- ADDING COLOR

// ==== HOW TO ADD IMAGES
//  Image(decorative: "image")
// Image(systemName: "imageName")

// === HOW TO ADD IMAGES WITH A BUTTON

//Button {
//    print("Button was tapped")
//} label: {   <----- Make effect when click --------
//    Label("Edit", systemImage: "pencil")
//        .padding()
//        .foregroundColor(.white)
//        .background(.red)
//}
//}


import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Click", role: .destructive, action: executeDelete)
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
        Button {
            print("Button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundColor(.white)
                .background(.red)
        }
    }
    func executeDelete() {
        print("Now deleting...")
    }
}
#Preview {
    ContentView()
}
