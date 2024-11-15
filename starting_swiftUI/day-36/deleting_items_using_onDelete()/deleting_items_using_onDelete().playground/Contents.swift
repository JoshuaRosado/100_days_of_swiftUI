import UIKit


// Deleting items using onDelete()


import SwiftUI

struct ContentView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationStack{ // Using NavigationStack to implement edit button for deleting
            
            
            VStack {
                List{
                    ForEach(numbers, id:\.self){
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add number"){// add a number to the empty list
                    numbers.append(currentNumber)
                    currentNumber += 1 // increment number of row
                }
                
            }
            // adding Edit button for delete
            .toolbar{
                EditButton()
        }
        
        }
    }
    // remove IndexSet ( Int selected "Position" ) from the array
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}t
