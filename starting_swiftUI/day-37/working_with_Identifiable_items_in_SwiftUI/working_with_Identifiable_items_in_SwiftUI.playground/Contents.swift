import UIKit


// Working with Identifiable items in SwiftUI


import SwiftUI



struct ExpenseItem: Identifiable {
    // using the protocol Identifiable
    // we no longer need the "id: \.id"
    // in
    // ForEach(expenses.items, id: \.id)
    //  “this type can be identified uniquely.”
    // It requires to have an id
    
    let id = UUID() //  UUID – short for “universally unique identifier”
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]()
}


struct ContentView: View {
    @State private var expenses = Expenses()
    var body: some View {
        NavigationStack {
            List {
                
                
                ForEach(expenses.items, id: \.id){ item in
                    
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                EditButton()
                Button("Add Expense", systemImage: "plus"){
                    
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    
                    expenses.items.append(expense)
                    
                }
            }
            
        }
    }
    
    func removeItems(at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
    
}

#Preview {
    ContentView()
}
