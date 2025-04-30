import UIKit

// Syncing SwiftData with CloudKit


//  Job.swift
//  SwiftDataProject
//
//  Created by Joshua Rosado Olivencia on 3/29/25.
//

import Foundation
import SwiftData



// SwiftData with iCloud has requirements that local SwiftData does not
// All properties must be optional or have a default values, and all relationship must be optional

@Model
class Job {
    // Adjusting properties with default values
    var name: String = "None"
    var priority: Int = 1
    // Linking this model with User model somehow
    var owner: User?
    
    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}





//  User.swift
//  SwiftDataProject
//
//  Created by Joshua Rosado Olivencia on 3/24/25.
//

import Foundation
import SwiftData

@Model

// SwiftData with iCloud has requirements that local SwiftData does not
// All properties must be optional or have a default values, and all relationship must be optional

class User {
    // Adjust properties with default values
    var name: String = "Anonymous"
    var city: String = "Unknown"
    var joinDate: Date = Date.now
    var age : Int = 1
    // @Relationship == Modifier - WHEN DELETE THE USER, DELETE THEIR JOBS AS WELL
    // This is a relationship so it must be Optional
    @Relationship(deleteRule: .cascade) var jobs: [Job]? = [Job]()
    // var jobs is a optional Array of Job = Empty Array of Job Default

    
    // unwrappedJobs is an Array of Job
    var unwrappedJobs: [Job] {
        jobs ?? []
        //send back jobs if not ?? send an empty array
        
    }
    init(name: String, city: String, joinDate: Date, age: Int, job: [Job] = [Job]()) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
        self.age = age
        self.jobs = jobs
    }
}



//  UsersView.swift
//  SwiftDataProject
//
//  Created by Joshua Rosado Olivencia on 3/26/25.
//

import SwiftData
import SwiftUI


struct UsersView: View {
    @Environment(\.modelContext) var modelContext
    @Query var users: [User]
    
    var body: some View {
        
        List(users){ user in
            HStack {
                
                Text(user.name)
                Spacer()
                
                Text(String(user.unwrappedJobs.count))
                    .fontWeight(.black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
            }
            
        }
        .onAppear(perform: addSample)
        
    }
    // INIT() = Replacing default value from this struct ***
    
    // Passing some data into the View saying "This is your filter/sort order
    // Using an initializer
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        // _users == is a new query of a Predicate of User
        // one user coming in
        _users = Query(filter: #Predicate<User> { user in
            
            user.joinDate >= minimumJoinDate
        }, sort: sortOrder
        )
    }
    // Making the query that makes the Array
    
    // Function adding a Sample
    func addSample(){
        // 1 new user
        let user1 = User(name: "Khai Rosado", city: "Nashville", joinDate: .now, age: 1)
        // 2 different jobs but they are not attachted to the user YET
        // They are just created
        let job1 = Job(name: "Delivery Driver", priority: 2)
        let job2 = Job(name: "iOS Developer", priority: 1)
        
        // Insert NEW-USER to our model
        modelContext.insert(user1)
        
        // ADD THE JOBS to our User's array
        user1.jobs?.append(job1)
        user1.jobs?.append(job2)
        
        
    }
}

#Preview {
    UsersView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
    // Make a model container for our User.self
        .modelContainer(for: User.self)
    
}
