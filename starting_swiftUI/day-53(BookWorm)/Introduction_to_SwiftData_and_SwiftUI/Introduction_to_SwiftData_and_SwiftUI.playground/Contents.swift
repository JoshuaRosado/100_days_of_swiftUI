import UIKit

// Introduction to SwiftData and SwiftUI

// -------------- CONTENTVIEW

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext // Reads out the model content
    
    @Query var students: [Student] // @Query loads Student from it Model Container for us
    
    
    var body: some View {
        NavigationStack{
            List(students) { student in
                Text("\(student.name)")
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add"){
                    let firstNames = ["Khai", "Leya", "JJ", "Lexi"]
                    let middleNames = ["Asher", "Grace", "Junior","Elizabeth"]
                    
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenMiddleName = middleNames.randomElement()!
                    
                    // New Object with id, random name and random middle name
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenMiddleName)")
                    
                    
                    // When Add button is tapped, add New Object of Student into the our Model
                    modelContext.insert(student)
                    print(student.name)
                    print(modelContext)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


// ---------------------------- STUDENT CLASS

import SwiftUI
// import SwiftData
import SwiftData

// DATA THAT WE ARE GOING TO WORK WITH


// first REPLACE Macro

// Macro
// @Observable

// FOR

// Macro
@Model
class Student {
    var id : UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}



// ----------------------------------- BOOKWORMAPP.SWIFT

// Import SwiftData
import SwiftData
import SwiftUI

@main // Tells SwiftUI, "THIS is what LAUNCHES our app"
struct BookwormApp: App {
    var body: some Scene {
        // WindowGroup = Tells SwiftUI that our app can be displayed in many windows
        WindowGroup  {
            ContentView()
        }
        .modelContainer(for: Student.self) // WHERE the source of Data is
    }
}

