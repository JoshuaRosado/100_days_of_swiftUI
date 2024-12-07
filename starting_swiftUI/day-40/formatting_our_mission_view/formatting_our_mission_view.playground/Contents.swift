import UIKit

// Formatting out mission view

import SwiftUI



// COLOR-SCHEME FILE =======================================================

// Extend ShapeStyle BUT ONLY where we are using Color

extension ShapeStyle where Self == Color {
    
    static var darkBackground: Color { // sending back a color
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}

// =======================================================

// ContentView File =======================================================


struct ContentView: View {
    let astronauts : [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
    // create an ARRAY of adaptive columns with GridItem
    // with a minimum but no max so it can expands more if its needed
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(missions) { mission in
                        NavigationLink{
                            Text("Detail View")
                        } label: {
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:100, height:100)
                                    .padding()
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.5))
                                    
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                            
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            // Telling SwiftUI you want a prefer colorScheme
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}


// =======================================================


// Mission File // =======================================================


struct Mission: Codable, Identifiable {
    
    // struct inside Mission
    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    let id : Int
    // NOT EVERY DICTIONARY HAS launchDate
    // We MIGHT have one, We MIGHT not.  USE OPTIONAL
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    

    var displayName: String {
        "Apollo \(id)"
        
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        // if there's a launchDate return a formatted date ELSE "N/A"
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}

// =======================================================


// Bundle File // =======================================================


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
        // decode date formatter to customize the date format
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
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

// =======================================================





