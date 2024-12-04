import UIKit

// Loading a specific kind of Codable data


import SwiftUI

import Foundation

struct Astronaut: Codable, Identifiable {
    let id : String
    let name : String
    let description: String
}




extension Bundle {
    // decode some file
    // return String: Astronaut Dict
    func decode(_ file: String) -> [String: Astronaut] {
        // URL
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle. ")
        }
        
        // finding data and loading it
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle. ")
        }
        // if we found the data and loaded
        // decoded
        
        let decoder = JSONDecoder()
        
        do {
            // try to return the data decoded
            return try decoder.decode([String: Astronaut].self, from: data)

        // catch if there's a key missing from data
            
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue) - \(context.debugDescription)" )
            
            // catch if there's a mismatch
            
        } catch DecodingError.typeMismatch(_, let context){
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
            
            // catch if there's a missing value
            
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing \(type) value = \(context.debugDescription)")
            
            
            // catch if the JSON file is invalid
            
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears o be invalid JSON")
            
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
        
    }
}
