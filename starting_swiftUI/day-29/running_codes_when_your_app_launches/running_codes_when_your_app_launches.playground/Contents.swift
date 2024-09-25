import UIKit
import Foundation

// Running codes when your app launches


import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationStack{
            List{
                Section {
                    TextField("Enter your word", text: $newWord)

                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach(usedWords, id: \.self){ word in
                        HStack{
                            Image(systemName: "\(word.count).circle")

                            Text(word)
                        }
                        
                    }
        
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            
            // Perform function when the app APPEARS IN VIEW. Invoke function as soon is visible//
            .onAppear(perform: startGame)
        }
        
        }

    func addNewWord() {

        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        guard answer.count > 0 else { return }
        
        withAnimation{
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    // adding a func to start game
    func startGame() {
        // first we need to look up our start.txt file in our bundle app
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt")
        // if we find the file
        
        {
            // load the word into a string( single string )
            
            if let startWords = try? String(contentsOf: startWordsURL, encoding: .ascii) {
                
                // make an array with components separatedBy a new line. To have an array with multiple strings
                let allWords = startWords.components(separatedBy: "\n")
                 // make the rootWord a random selection from our array. If the app does not find it set it to "silkworm"
                rootWord = allWords.randomElement() ?? "silkworm"
                // if we reached to this step , return and exit
                return
            }
        }
        // if file is not found return fatal error message
        fatalError("Could not load start.txt from bundle.")
    }

}


#Preview {
    ContentView()
}

