import UIKit
import Foundation


// ==== How to create a String


// for a long string, use 3 double quotes (""" string """) so we can write it in multiple
// lines to make it more readible
let message = """
A day in the
life of an
apple engineer
"""

let characterName = "Woody"
let movieLine = "That's when \(characterName) said"
let movieQuote = " 'There's a snake in my boot'"

let fullLine = "\(movieLine)\(movieQuote)"

print(fullLine)
print(characterName.count)// count the letters in the strings
print(characterName.uppercased())// all Upper cassed = WOODY
print(characterName.lowercased())// all lower cassed = woody
print(movieLine.hasPrefix("That's when")) // will return boolean if the string STARTS(PREFIX) with the string entered in parenthesis
print(movieLine.hasSuffix("said"))// will return boolean if the string ENDS(SUFFIX) with the string entered in parenthesis


// BE SURE when using .hasPrefix, .hasSuffix to type the string letters correctly. If the string you wrote is lower cased but the string that you are targeting is Upper Cassed swift will scream at you that you have an error. 

