import UIKit
import Foundation


// HOW TO SELECT DATES AND TIMES WITH DATEPICKER


import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    // DATE is a built in func of SwiftUI that allows you to get the datetime you select
    var body: some View {
        // DatePicker = Selecting date and time (depending on what you select)
        
        //DatePicker("Label Name", selection: $Variable, in: start...(to the time selected by user)
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
        
        
//        **** DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
         
        //using ( .displayedComponents: .yourSelection ) allows you to select what components you want visible
        
        
        
            .labelsHidden() // hides label if its not needed

            .datePickerStyle(.wheel) // customize the style of the DatePicker
        
    }
    
    // If you need to create a range from today to same time tomorrow
    
    // Create a func
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        // constant = time NOW plus 86400 seconds = 24hrs which equals adding a whole day
        
        
        let range = Date.now...tomorrow
        // constat = a range from (now... tomorrow(same time))
        
    }
}

#Preview {
    ContentView()
}

