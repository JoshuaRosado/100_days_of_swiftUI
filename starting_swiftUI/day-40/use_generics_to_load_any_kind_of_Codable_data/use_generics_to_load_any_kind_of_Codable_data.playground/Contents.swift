import UIKit

// Using generics to load any kind of Codable data


import Foundation

// NESTED STRUCT
// HELPS KEEPS YOUR CODE ORGANIZED



// MISSION FILE --------------------------------------------
struct Mission: Codable, Identifiable {
    
    // struct inside Mission
    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    let id : Int
    // NOT EVERY DICTIONARY HAS launchDate
    // We MIGHT have one, We MIGHT not.  USE OPTIONAL
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}

// --------------------------------------------

// BUNDLE FILE --------------------------------------------

// STEPS of decoding JSON file

// 1- Find URL from file in Bundle
// 2- Load the data from file in Bundle
// 3- Decode data from file in Bundle


extension Bundle {
    
    // func named decode
    // takes SOME file of String
    // returns a Dictionary of String from Astronaut Struct
    
    // <T> = Type of something
    // PLACEHOLDER for the TYPE you want to work with
    // MUST BE CODABLE
    
    
    // CREATING A PLACE HOLDER to be able to use different types and not just a hard coded one
    
    
    func decode<T: Codable>(_ file: String) -> T {
        
        // STEP 1
        // try to find the URL from the file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            // else return fatalError message
            fatalError("Failed to locate \(file) in bundle")
        }
        // STEP 2
        // try to load data from the file
        guard let data = try? Data(contentsOf: url) else {
            // else return fatalError message
            fatalError("Failed to load \(file) from bundle")
        }
        
        // STEP 3
        // decode the data from JSON file
        
        let decoder = JSONDecoder()
        
        // Do BLOCK
        
        // STEP 1
            // Try to Return decoded data
        // STEP 2
            // Catch errors
            // ERROR 1
            // Key Not Found
            // ERROR 2
            // Type Mismatch
            // ERROR 3
            // Value Not Found
            // ERROR 4
            // Data Corrupted Invalid JSON
        // STEP 3
            //Enclosing exhaustive
            
        do {
            //STEP 1
            return try decoder.decode(T.self, from: data)
            
            //STEP 2
            // ERROR 1 **
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key \(key.stringValue) - \(context.debugDescription)")
            //ERROR 2 **
        }catch DecodingError.typeMismatch(let type, let context ){
            fatalError("Failed to decode \(file) from bundle due to type mismatch \(type) - \(context.debugDescription)")
            //ERROR 3 **
        } catch DecodingError.valueNotFound(let type, let context ){
            fatalError("Failed to decode \(file) from bundle due to missing value \(type) - \(context.debugDescription)")
            //ERROR 4 **
        }catch DecodingError.dataCorrupted(_){
            fatalError("Failed to decode \(file) from bundle because it appears to be invalid JSON")
            
            // STEP 3
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    
    }
}


// CONTENTVIEW FILE ----------------------------

import SwiftUI

struct ContentView: View {
    
    // NOW WE CAN USE BOTH STRUCTS switching them using the <T: Codble> placeholder instead of copying the Bundle file code over again.
    let astronauts : [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text(String(astronauts["schirra"]?.name ?? "Nothing"))
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}


