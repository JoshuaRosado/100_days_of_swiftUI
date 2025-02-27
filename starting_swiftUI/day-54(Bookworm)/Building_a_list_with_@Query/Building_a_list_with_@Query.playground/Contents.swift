import UIKit


// Building a list with @Query

// EmojiRatingView ==============================================

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int
    
    // Use a switch to Display an emoji depending on the "rating" giving. 1-5
    var body: some View {
        switch rating {
        case 1:
            Text("☹️")
        case 2:
            Text("🥱")
        case 3:
            Text("😕")
        case 4:
            Text("😊")
            
        default:
            Text("🤯")
            
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3 )
}

// ==============================================

// ContentView ==================================

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var books: [Book]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack{
            // Display a list
            List {
                // For each book added
                ForEach(books){ book in
                    // Each book having a navigationLink to using itself as a value
                    NavigationLink(value : book) {
                        // HStack with the Emoji display at the left side displaying the emoji according the rating submitted
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            
                            // at the right side Display Author of the book
                            VStack(alignment: .leading){
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
                .navigationTitle("Bookworm")
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button("Add Book", systemImage: "plus"){
                            showingAddScreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen){
                    AddBookView()
                }
        }
    }
}

#Preview {
    ContentView()
}
