import UIKit

// Adding a custom star rating component

// RatingView =====================================

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    
    var body: some View {
        HStack{
            if label.isEmpty == false {
                Text(label)
            }
            // for each number itself
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                    // Make a Button
                Button {
                    print("Tapped \(number)")
                    //When pressed make "rating:Int" equal that "number"
                    rating = number
                } label : {
                    // Using image func
                    // taking "number" and returning Image
                    image(for: number)
                    // if number(Image index) is greater then our rating, make it offColor
                        .foregroundStyle(number > rating ? offColor: onColor)
                    // Image(stars)count that equals rating are going to be onColor
                }
            }
        }
        .buttonStyle(.plain) // This will make each Rating Star button be a Individual button when tapped
    }
    
    // Takes a number and returns an Image
    func image(for number: Int) -> Image {
        // if that number is greater than current rating
        if number > rating {
            // if there's an "offImage" return, if not return "onImage"
            offImage ?? onImage
            // else if number is lesser than current rating
            //return onImage
        } else {
            onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(4)) // Constant value of 4
    // Perfect for using in Previews
}


//  ================================================

//  AddBookView ====================================
import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = "Fantasy"
    @State private var review = ""
    
    // genre's array for picker
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationStack{
            Form{ // Form to submt the book we want to add
                Section{
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)
                    // Genre Selection
                    Picker("Genre", selection: $genre){
                        ForEach(genres, id: \.self){
                            Text($0)
                        }
                    }
                }
                Section("Write a review"){
                    TextEditor(text:$review)
                    // Rating Selection
                    RatingView(rating: $rating)
                }
                
                Section{
                    // Save Button to add book
                    Button("Save") {
                        // New book created
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook) // Add newBook to our model
                        dismiss() // Dismiss View after adding Book
                        
                    }
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBookView()
}

//  ================================================
