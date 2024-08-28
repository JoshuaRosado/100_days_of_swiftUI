import UIKit
import Foundation

//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Rosado Olivencia on 8/28/24.
//

import SwiftUI

struct ContentView: View {
    // private variables that are going to be updated
    @State private var checkAmount = 0.0
    @State private var numbersOfPeople = 2
    @State private var tipPercentage = 20
    
    // default tip selection
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        Form{
            Section{
                // make text field with the title of "Amount" and having a value of " var checkAmount" with the format of currency. Instead of a default code currency, check the "Locale current currency indetifier" if it does not have one, set it to "USD"
                TextField("Amount" , value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                // instead of getting the keyboard with all letters, nums and emojis. Just open a keyboard of decimals to enter amount.
            }
            Section {
                // show the amount typed in, in the correct currency
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}

