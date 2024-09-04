
import SwiftUI

struct ContentView: View {
    
    let colors = ["Red", "Blue", "Yellow", "Green", "Purple", "Orange", "Black","Pink", "White", "Brown"]
    let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    let letters = ["A", "B","C","CH" ,"D", "E", "F", "G", "H", "I","J", "K","L", "LL","M","N","Ñ", "O", "P", "Q","R", "RR","S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var correctColor = Int.random(in: 0...9)
    var correctNumber = Int.random(in: 0...19)
    var correctLetter = Int.random(in: 0...29)
    
    
    
    var body: some View {
        // Starting with a Z stack to make a background and locate it in the back z-index and having the content in front of the background
        ZStack {
            RadialGradient(colors: [.white.opacity(3.5),.pink.opacity(2)], center: .center, startRadius: 0.90, endRadius: 500)
                .ignoresSafeArea()
            VStack(spacing: 20){
                VStack{
                    Text("Which color is")
                        .foregroundStyle(.secondary)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("\(colors[correctColor])") // show the Random selection from the colors Array
                        .foregroundStyle(.secondary) // text color
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/) // text size
                        .bold() // text thickness
                }
                
                ForEach(0..<3){ number in // for each number from 0 to 2
                    Button { // show a button
                        
                    }label: { // with a label
                        Image(colors[number]) // that has the colors arrays using the number range as the index
                            .resizable() // fixing the image of buttons size
                            .padding(.horizontal, 75) // giving some padding on the sides
                            .padding(.top, 15) // giving some padding on the top
                            .imageScale(.large) // giving the image a large size
                            
                    }
                    
                }
                
            }
        }
    }
}

