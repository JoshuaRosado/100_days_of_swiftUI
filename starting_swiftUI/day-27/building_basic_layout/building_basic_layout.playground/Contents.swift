import UIKit
import Foundation

// HOW TO BUILD A BASIC LAYOUT




import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("When do you want to wake up?") // Text Display
                    .font(.headline)
                
                // Pick a time to wake up. Displaying hours and minutes
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep") // Text Display
                    .font(.headline)
                
                // Counter to select the time desired to sleep
                // from 4 to 12. By .25
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily coffee intake") // Text Display
                    .font(.headline)
                
                // Counter to select how many coffee cups have been consumed
                // from 1 to 20
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in : 1...20)
            }
            .navigationTitle("BetterRest") // navigationStack title
            // a button to invoke the func of calculation
            .toolbar {
                Button("Calculate", action: calculateBedTime)
            }
        }
        
    }
    func calculateBedTime(){
    }
}
#Preview {
    ContentView()
}
