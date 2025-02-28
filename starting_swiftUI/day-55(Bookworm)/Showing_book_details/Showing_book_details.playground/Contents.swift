import UIKit

// Showing Book Details

// ContentView ===============================


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
                                
                                Text(book.title)
                                    .font(.headline)
                                
                                
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: removeObject)
            }
            
                .navigationTitle("Bookworm")
            // Give a navigation Destination for [Book]
                .navigationDestination(for: Book.self) { book in
                    // For each book, Display it in DetailView
                    DetailView(book:book)
                }
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
    func removeObject(at offsets: IndexSet){
        for offset in offsets {
            // find this book in our Query
            let book = books[offset]
            // delete it from the context
            modelContext.delete(book)
        }
    }
}

#Preview {
    ContentView()
}

// ==============================================================

// DetailView ===============================

import SwiftData
import SwiftUI

struct DetailView: View {
    let book: Book

    var body: some View {
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                Image(book.genre)
                    .resizable()
                    .scaledToFit()
                
                Text(book.genre.uppercased())
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(.capsule)
                    .offset(x: -5, y: -5)
            }
            
            Text(book.author)
                .font(.title)
                .foregroundStyle(.secondary)
            
            Text(book.review)
                .padding()
            
            RatingView(rating: .constant(book.rating))
                .font(.largeTitle)
        }
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
        .scrollBounceBehavior(.basedOnSize)
    }
}


// SAMPLE BOOK OBJECT FOR PREVIEW

// 1 - In order to create a SAMPLE Book object for Preview, we must first create a model context

// 2 - That model context comes from creating a model container

// 3 - If we create a model container, we don't want it to actually store anything, so we can create a custom configuration that tells SwiftData to store its information in memory only. That means everything is temporary

#Preview {
    do {
        // New ModelConfiguration, Temporary
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        
        // Make a new container out of the Temporary Model
        let container = try ModelContainer(for: Book.self , configurations: config)
        
        // Sample Book ( for preview )
        let example = Book(title: "Test Book", author: "Test Author", genre: "Fantasy", review: "This was a great book; I really enjoyed it", rating: 4)
        
        // Send back Detail View passing the (Temporary)Sample Book as our book
        return DetailView(book: example)
        // Using our Temporary container as ModelContainer
            .modelContainer(container)
    } catch {
        // Catch and return any errors
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}


// ==============================================================
