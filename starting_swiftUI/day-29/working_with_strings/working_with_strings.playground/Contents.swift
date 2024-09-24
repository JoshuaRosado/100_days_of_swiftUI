import UIKit
import Foundation


// Working with strings



import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
        
        }
    
   // OPTION 1
    
//    *** func testString() {
//       *** let input = "a b c"
//        // when using input.components(separatedBy: " spaces")
//        // will get back [a, b, c] index 0,1,2
//       *** let letters = input.components(separatedBy: " ")
//    }
    
    // OPTION 2
    
    func textString() {
        let input = """
        a
        b   
        c
        """
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()// will return a, b, c or nothing
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines) // OPTIONAL removing white spaces and new lines
 
    }
    
    func testStrings(){
        // STEP 1
        let word = "swift" // make a word
        let checker = UITextChecker() // and check
        
        // STEP 2
        // utf16 = character encoding, a way of storing letters in a string
        let range = NSRange(location: 0, length: word.utf16.count)
        
        // STEP 3
        // check if there's any miss spelled words
        
        let missspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        // STEP 4
        // return allGood if no miss spelled was found
        let allGood = missspelledRange.location == NSNotFound
    }
    

    
    
    
}


#Preview {
    ContentView()
}

