import UIKit
import Foundation



// ==========     CREATING PICKERS IN A FORM

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numbersOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        NavigationStack{
            
            Form{
                Section{
                    // make text field with the title of "Amount" and having a value of " var checkAmount" with the format of currency. Instead of a default code currency, check the "Locale current currency indetifier" if it does not have one, set it to "USD"
                    TextField("Amount" , value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")) // instead of getting the keyboard with all letters, nums and emojis. Just open a keyboard of decimals to enter amount.
                        .keyboardType(.decimalPad)
                    
                    
                    // Create a picker/selection, called "Number of people", selecting :var numbersOfPeople
                    Picker ("Number of people", selection : $numbersOfPeople){
                        // pick the amount of people between  (2 to 100)
                        ForEach(2..<100) {
                            Text("\($0) people") // show amount of people options
                            
                        }
                    } // You can have the Picker in the main page or add pickerStyle(.navigationLink) to take you to a different page to select your option
                    .pickerStyle(.navigationLink)
                }
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit").navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}

