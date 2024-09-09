import UIKit
import Foundation

// WHY MODIFIERS ORDER MATTERS



// A way of verifying what type of content we have and see the order from contents on how they are wrapped around each other

// **** print(type(of: self.body))



//The best way to think about it for now is to imagine that SwiftUI renders your view after every single modifier. So, as soon as you say .background(.red) it colors the background in red, regardless of what frame you give it. If you then later expand the frame, it won’t magically redraw the background – that was already applied.


//
//  Button("Hello, world"){
//       print(type(of: self.body))
//  }
//   ======= this order will not show the frame size
//   . background(.red)
//   . frame(width:200, height: 200)
//   ---------------------------
//   ======= instead rewrite the lines in this order
//  .frame(width: 200, height: 200)
//  .background(.red)
