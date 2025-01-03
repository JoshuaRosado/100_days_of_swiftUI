import UIKit

// Making changes permanent with UserDefaults


//
//  ContentView.swift
//  iExpense
//
//  Created by Joshua Rosado Olivencia on 11/13/24.
//

import SwiftUI



struct ExpenseItem: Identifiable, Codable {

    
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem](){
        didSet {
            // ENCODE the Objects created into JSON
            if let encoded = try? JSONEncoder().encode(items) {
                // and Save it using UserDefaults.
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
     
    init() { // New Initializer
        
        // if savedItems from UserDefaults
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            // Copy the code from savedItems
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                // The new Object is now The returning Object saved from UserDefault as DECODED
                items = decodedItems
                return
            }
        }
        // if not return an empty array
        
        items = []
    }
}


struct ContentView: View {
    @State private var expenses = Expenses()
    
    @State private var showingAddExpense = false
    
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
                
                
                    
                    showingAddExpense = true
                    
                    
                    
                }
            }
            .sheet(isPresented: $showingAddExpense){
                AddView(expenses: expenses)
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
