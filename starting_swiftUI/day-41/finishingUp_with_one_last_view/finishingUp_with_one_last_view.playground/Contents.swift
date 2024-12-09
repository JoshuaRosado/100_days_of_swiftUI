import UIKit


// Finishing up with one last View

// CREATE ASTRONAUTVIEW file ===========================

import SwiftUI

struct AstronautView : View {
    // 1 Astronaut coming in
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                
                Text(astronaut.description)
                    .padding()
                
            }
            
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        
        
        
        
    }
}


#Preview {
    // Load all the astronauts
    
    let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
    
}
 //=====================================================================



// UPDATING MissionView File ===========================================

import SwiftUI

struct MissionView: View {
    
    struct CrewMember {
        // What they did
        let role: String
        //and who they are
        let astronaut: Astronaut
        
        // Two pieces from two different JSON files, merged together
    }
    
    let mission: Mission
    let crew : [CrewMember]
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal){
                        // Using Parent width and multiplying
                        width, axis in width * 0.6
                    }
                
                
                VStack(alignment: .leading){
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.lightBackground)
                        .padding(.vertical)
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.lightBackground)
                        .padding(.vertical)
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(crew, id: \.role) { crewMember in
                        NavigationLink{
                            AstronautView(astronaut: crewMember.astronaut)
                            
                        } label: {
                            HStack {
                                Image(crewMember.astronaut.id)
                                    .resizable()
                                    .frame(width: 104, height: 72)
                                    .clipShape(.capsule)
                                    .overlay(
                                        Capsule()
                                            .strokeBorder(.white, lineWidth: 1)
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text(crewMember.astronaut.name)
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                    
                                    Text(crewMember.role)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                            }
                            
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
        
    }
    
    init(mission: Mission, astronauts: [String:Astronaut]) {
        self.mission = mission
        
        self.crew =  mission.crew.map { member in
            if let astronaut = astronauts[member.name]{
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

#Preview {
    
    // load the DECODED list file from Bundle
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionView(mission: missions[0], astronauts: astronauts)
        .preferredColorScheme(.dark)
}



//=================================================================
