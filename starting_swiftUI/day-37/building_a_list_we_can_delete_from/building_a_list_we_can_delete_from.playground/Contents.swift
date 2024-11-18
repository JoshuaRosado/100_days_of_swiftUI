import UIKit


// Building a list we can delete from



import SwiftUI

struct ExpenseItem { // create a struct for Each Item with its properties
    let name: String
    let type: String
    let amount: Double
}

@Observable // create a class with @Observable because it will be updating
class Expenses {
    var items = [ExpenseItem]() // Items will be an Array of Items
}


struct ContentView: View {
    @State private var expenses = Expenses() //  Object from class
    var body: some View {
        NavigationStack {
            List {
                
                // For each item from the Items Array
                ForEach(expenses.items, id: \.name){ item in
                    // pass one item.name at a time
                    Text(item.name)
                }
                .onDelete(perform: removeItems) // remove item selected
            }
            .navigationTitle("iExpense")
            .toolbar {
                EditButton() // edit button to delete
                
                // Add item
                Button("Add Expense", systemImage: "plus"){
                    // expense = One item with the properties inserted
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    // expenses Object from Expenses Class
                    // choose items ARRAY
                    // and append the new expense created
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
