import UIKit
import Foundation

// Adding to a list of words


//
//  ContentView.swift
//  WordScramble
//
//  Created by Joshua Rosado Olivencia on 9/24/24.
//


import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationStack{
            List{
                Section { // Enter your word section
                    TextField("Enter your word", text: $newWord)
                    // disable autocapitalization of the input
                        .textInputAutocapitalization(.never)
                }
                
                Section { // show words already entered section
                    ForEach(usedWords, id: \.self){ word in
                        HStack{ // display list of words horizontal stack
                            // using image symbol of number. Number of letters that the word contains at left side
                            Image(systemName: "\(word.count).circle")
                            // and word at the right side
                            Text(word)
                        }
                        
                    }
        
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord) // submit new word using function
        }
        
        }
    // add new word function
    func addNewWord() {
        // input will be lowercased, and will have no empty spaces or new lines
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        // if answer is greater than 0 (continue)
        // if answer is nothing (exit)
        guard answer.count > 0 else { return }
        
        
        
        withAnimation{ // adding a simple animation to whatever is inside the curly brackets
            
            // add the answer to the list(array) at the first index
            usedWords.insert(answer, at: 0)
        }
        
        // reset text field for next word
        newWord = ""
    }

}


#Preview {
    ContentView()
}
