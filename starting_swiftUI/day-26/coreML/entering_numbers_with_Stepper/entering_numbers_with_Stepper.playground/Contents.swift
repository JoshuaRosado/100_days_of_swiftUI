import UIKit
import Foundation

// HOW TO ENTER NUMBERS WITH STEPPER


import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        //Stepper = counter
        // Stepper( ValueToShow, value: $ValueToShow, in: rangeSelected, step: stepAmountSelected)
        // .formatted() will clean all the extra decimals
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        
        
    }
}

#Preview {
    ContentView()
}
