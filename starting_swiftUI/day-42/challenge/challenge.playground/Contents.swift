import UIKit

var greeting = "Hello, playground"


// CHALLENGE




//One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what’s going on.
//


// CHALLENGE 1 - COMPLETED
//Add the launch date to MissionView, below the mission badge. You might choose to format this differently given that more space is available, but it’s down to you.

// CHALLENGE 2 - UNCOMPLETED  ---- 63% Completed
//Extract one or two pieces of view code into their own new SwiftUI views – the horizontal scroll view in MissionView is a great candidate, but if you followed my styling then you could also move the Rectangle dividers out too.


// CHALLENGE 3 - UNCOMPLETED
//For a tough challenge, add a toolbar item to ContentView that toggles between showing missions as a grid and as a list.






//Hacking with Swift+ subscribers can get a complete video solution for this checkpoint here: Solution to Moonshot. If you don’t already subscribe, you can start a free trial today.
//Tip: For that last one, your best bet is to make all your grid code and all your list code two separate views, and switch between them using an if condition in ContentView. You can’t attach SwiftUI modifiers to an if condition, but you can wrap that condition in a Group then attach modifiers to there, like this:


// ==============================================
//Group {
//    if showingGrid {
//        GridLayout(astronauts: astronauts, missions: missions)
//    } else {
//        ListLayout(astronauts: astronauts, missions: missions)
//    }
//}
//.navigationTitle("My Group")

//===============================================



//You might hit some speed bumps trying to style your list, because they have a particular look and feel on iOS by default. Try attaching .listStyle(.plain) to your list, then something like .listRowBackground(Color.darkBackground) to the contents of your list row – that should get you a long way towards your goal.
