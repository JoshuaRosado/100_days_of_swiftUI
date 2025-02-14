import UIKit


// Taking Basic Order Details

// ContentView =====================================




import SwiftUI

struct ContentView: View {
    @StateObject var order = Order()
    var body: some View{
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.type) {
                        ForEach(Order.types.indices) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.quantity)", value: $order.quantity, in : 3...20)
                }
                Section{
                    // Using toggle with the Bool and add animation once its tapped
                    Toggle("Any special requests?" , isOn: $order.specialRequestEnabled.animation())
                    
                    // if Bool is true display 2 extra Toggles
                    if order.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $order.extraFrosting)
                        Toggle("Add extra sprinkles", isOn: $order.addSprinkles)
                    }
                }
                
                Section{
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery details")
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
    
    
}

#Preview {
    ContentView()
}


// Order Class ===================================



// What is MVVM architecture in SwiftUI

// Model-View-ViewModel (MVVM) is an architectural pattern that separates a software application's user interface (UI) from its business (or back-end) logic. MVVM is used to facilitate application development, testing, maintenance and collaboration.

import SwiftUI
// @State = Manages simple, locate state variables that belong to a single SwiftUI view

// @Published = Works with ObservableObject protocol to notify SwiftUI views of changes in shared data, allowing updates to propagate across multiple views or within a hierarchy


class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        // if specialRequestEnabled is not selected or it was unselected
        // extraFrosting and addSprinkles will automatically turn false
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
}



// AddressView ================================


import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AddressView(order: Order())
}

