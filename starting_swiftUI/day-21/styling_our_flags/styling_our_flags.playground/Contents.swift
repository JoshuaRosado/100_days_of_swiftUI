import UIKit
import Foundation
// HOW TO STYLE IMAGES AND TEXT

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France","Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing:30){
                
                VStack{
                    // STYLING TEXT
//  ===================================================================
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy)) //<-- font(.__.weight(.__)
                    // built in
                    
                    
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold)) //<-- font(.__.weight(.__)
//  ====================================================================
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        
                        // STYLING IMGS
//  ====================================================================
                        Image(countries[number])
                            .clipShape(.capsule) // .clipShape(.__) shapes the image
                            .shadow(radius: 5) // .shadow(radius: _) gives image a shadow
                    }}
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
    Text("Your score is ???")
        }
    }
        func flagTapped(_ number: Int){
            if number == correctAnswer{
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }
            showingScore = true
        }
        func askQuestion(){
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
            
        }
    }

#Preview {
    ContentView()
}

