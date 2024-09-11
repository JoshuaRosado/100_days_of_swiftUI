import UIKit

//========= ViewsAndModifiers

//This third SwiftUI project is actually our first technique project – a change in pace as we explore certain SwiftUI features in depth, looking at how they work in detail along with why they work that way.

//In this technique project we’re going to take a close look at views and view modifiers, and hopefully answer some of the most common questions folks have at this point – why does SwiftUI use structs for its views? Why does it use some View so much? How do modifiers really work? My hope is that by the end of this project you’ll have a thorough understanding of what makes SwiftUI tick.
//
//As with the other days it’s a good idea to work in an Xcode project so you can see your code in action, so please create a new App project called ViewsAndModifiers.





import SwiftUI

struct ContentView: View {
    @State private var withdraw: Double = 0
    @State private var depositAmount: Double = 0
    @State private var accountBalance: Double = 0
    @State private var accountName = "Joshua"
    
    @State private var showAmountField = false
    @State private var showBtn = false
    
    @State private var below50 = false
    @State private var noFunds = false
    
    let accountType = ["Savings", "Checking"]
    
    @State private var accountSelected = "Savings"
    
    
    
    
    
    var body: some View {
        ZStack{
            Section{
                RadialGradient(colors: [.blue.opacity(0.4), .white] ,center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 400, endRadius: 600)
                    .ignoresSafeArea()
            }
            Section{
                VStack{
                    Section{
                        Text("\(accountName)'s \(accountSelected) Account")
                            .font(.headline).fontWeight(.semibold).foregroundStyle(.white).fontDesign(.rounded)
                    }
                    Section{
                        Form{
                            Picker("Account Selection", selection: $accountSelected){
                                ForEach(accountType, id: \.self){
                                    Text($0)
                            }
                                
                        }
                            .pickerStyle(.segmented)
                            Text("Balance: \(accountBalance.formatted(.currency(code:Locale.current.currency?.identifier ?? "USD")))")
                            
                    
                                    
                            
                                .buttonStyle(.bordered)
                            HStack{
                                Text("Amount:")
                                TextField("Deposit", value: $depositAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                
                            }

                        }

                        Button("Deposit", systemImage: "Money", action: deposit)
                            .buttonStyle(.bordered)
                            .buttonBorderShape(.capsule)
                        
                    }

                }
            }
        }
    }
    func deposit(){
        accountBalance += depositAmount
    }
}

#Preview {
    ContentView()
}
