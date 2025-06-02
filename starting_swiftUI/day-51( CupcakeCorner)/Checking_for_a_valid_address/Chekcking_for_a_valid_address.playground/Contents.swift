import SwiftUI

// Checking for a valid address

// ============================== ORDER




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


// ===================== AddressView

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order
    var body: some View {
        Form {
            Section{
                TextField("Name", text: $order.name)
                TextField("Streed Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section{
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                }
            }
            // Disable the Check out Button
            // if the Address fields are not field
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

#Preview {
    AddressView(order: Order())
}


// ====================== Checkout

import SwiftUI

struct CheckoutView: View {
    var order: Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CheckoutView(order: Order())
}



// ======================== CONTENTVIEW




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

