import UIKit





// ===================   GRADIENT






// HOW TO === Create a linear gradient color background
//LinearGradient(colors: [.__, .__], startPoint: __, endPoint: .__)

// HOW TO  === Customize the start and end point with percentages(FLOAT)
// [Gradient.Stop(color: __, location: __)]

//  HOW TO === Create a Radial (Circular) Gradient color background
// RadialGradient(colors: [.white, .teal] ,center: .center, startRadius: 30, endRadius: 300)

// HOW TO === Create an Angular (Angles) Gradient color background
// AngularGradient(colors: [.__, .__, .__], center: .__)


// HOW TO == Create a soft gentle PROFESSIONAL BACKGROUNDS color

//.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//.foregroundColor(.__)
//.background(.__.gradient)

// ****** == Lines of codes commented


import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Your content")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity) // bg color size
            .foregroundColor(.secondary).font(.title).bold()// text color
            .background(.mint.opacity(0.4).gradient) // bg color and gradient
        
        
        
        
        
        
        // ***** LinearGradient(colors: [.white,.black], startPoint: .top, endPoint: .bottom)
        
        //we can specify starting point and ending point by percentages(FLOAT)
        
        // ARRAY OF GRADIENT must have an init
        
        //        *****  LinearGradient(stops :[
        //            .init(color: .mint, location: 0.65 ),
        //            .init(color: .white, location: 0.85)],
        //            startPoint: .top, endPoint: .bottom)
        //            .ignoresSafeArea()
        
        // Radial Gradient = Radious = Circular gradient color
        
        
        //        **** RadialGradient(colors: [.white, .mint] ,center: .center, startRadius: 150, endRadius: 300)
        //            .ignoresSafeArea()
        //
        //        ZStack{
        //                ***** AngularGradient(colors: [.mint, .white, .pink, .gray, .blue, .mint], center: .top)
        //                    .ignoresSafeArea()
        //                Text("I made this background").font(.title).bold()
        //            }
        
        

        
    }
        
        }
