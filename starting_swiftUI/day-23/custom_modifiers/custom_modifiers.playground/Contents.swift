import UIKit
import Foundation

// CUSTOM MODIFIERS



import SwiftUI

struct Title: ViewModifier { // creating a Title struct ViewModifier
    func body(content: Content) -> some View { // receive a content and return a content view
        content
        // list of modifiers
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View{ // creating an extension from the Title Struct created previously
    func titleStyle() -> some View{
        modifier(Title()) // now the extension can be use by only writing ( .titleStyle )
    }
}

struct Watermark: ViewModifier{ // creating Watermark struct ViewModifier
    var text : String // Showing a text
    
    func body( content : Content) -> some View {
        ZStack(alignment: .bottomTrailing) { // return a content with this modifiers
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
            
        }
    }
}

extension View{ // creating an extension from the Watermark Struct
    func watermarked( with text: String) -> some View{
        modifier(Watermark(text: text)) // now you can use  ( .watermarked( with: "String ))
    }
}


struct ContentView: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 400)
            .watermarked(with: "Hacking with Swift")
    }
}

#Preview {
    ContentView()
}

