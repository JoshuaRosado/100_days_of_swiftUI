import UIKit
import Foundation

// Loading resources from your app bundle





import SwiftUI

struct ContentView: View {
    let people = ["Fin", "Leia", "Luke", "Rey"]
    var body: some View {
        Text("Hello")
        }
    
    
    // We use Bundle.main.url() to read the URL
    // if the file exist it will be sent back to us, if not we'll get back 'nil'. So this an OPTIONAL URL
    
    func testBundles() { // func
        // read the file url
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt"){ // if this file exist
            
            if let fileContentes = try? String(contentsOf: fileURL){ // send it back as a string
                
                // we loaded the file into a string!
            }
        }
        
    }
}


#Preview {
    ContentView()
}
