import UIKit
import Foundation


// HOW TO WORK WITH DATES

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Show the current Date in the format of datetime
        
        // displaying hour and minute
        Text(Date.now, format: .dateTime.hour().minute())
        // displaying day, month and year
        Text(Date.now, format: .dateTime.day().month().year())
        // displaying formatted date: "selection", time: "selection
        Text(Date.now.formatted(date: .long, time: .shortened))
        
    }
    
//    **** func exampleDates() {
//        **** var components = DateComponents()
    //  ----   empty var of components
    
//        **** components.hour = 8
    // --- setting components of 8 hours
//        **** components.minute = 0
    // --- setting components of 0 minutes
    
//        **** let date = Calendar.current.date(from: components) ?? .now
    // display the current calendar date using the components selected. if not ?? show current date
//    }
    
    func exampleDates2() {
        let components = Calendar.current.dateComponents([.hour,.minute], from:.now)
        // Use current calendar with date components of [hour, minute]
        // from now(current date)
        
        let hour = components.hour ?? 0
        // let constant hour be the component of hour if not ?? 0
        let minute = components.minute ?? 0
        // let constant minute be the component of minute if not ?? 0
    }

    
    
    
    
}
#Preview {
    ContentView()
}
