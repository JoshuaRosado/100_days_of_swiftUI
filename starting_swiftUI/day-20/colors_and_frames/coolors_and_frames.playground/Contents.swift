// Color.__ == (background color)
// .background(__) == (text background color)
//.frame( width: __ , height: __ == (size for background color cover)
// .ignoreSafeArea == (make background color cover 100% including the round corners( safeArea))
// foregroundStyle(.__)  == ( Text color)
// .background(.ultraThinMaterial) == ( glass effect )



// ****** == Lines of codes commented


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background materials
            
            VStack(spacing: 0){
                Color.indigo
                Color.secondary
            }
            Text("Your content")
                .foregroundStyle(.secondary) // VIBRANCY Text color
                .padding(50)
                .background(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
            
            // treating full background color as it own VIEW
            
            // **** Color(red:1, green: 0.8, blue:0)
            // customized color
            
            // **** Color.primary
            // flips between dark and light mode
//            ****** Color.accentColor
//            ****** Color.secondary // faded background
            
            // frame modifier = to modify the size of the color range
//           ********.frame(width: 200, height: 200)
            
            // using minimum and maximum width and height
            // min width of 200 up to infinity and maximum height until 200
//                ****** .frame(minWidth: 200, maxWidth: .infinity ,maxHeight: 200)
            
//           ******  Text("Your content")
        
        //  ******   .background(.red)  ==  Text background
         
        //how to make background to fill up 100% including round coners ( also called SafeAreas
        
//        ******.ignoresSafeArea()
         
      
    }
}
