import UIKit
import Foundation
    

// VIEW AS PROPERTIES



import SwiftUI

struct ContentView: View {
    var motto1 : some View{
        Text ("Draco dormiens")
    }
    let motto2 = Text("Nunquam titillandus")
    
    
    
    // ---- BEST WAY TO USE
    //================================================
    
    @ViewBuilder var spells : some View{
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    //===================================================
    var body: some View {
        VStack{
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}


