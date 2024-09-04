import SwiftUI




// ======= SHOWING SCORE WITH ALERT MESSAGE

struct ContentView: View {
    // We need to make the countries array mutuable using @STATE so we can change it during the process of the game
    
    @State private var countries = ["Estonia", "France","Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    // Array needs to change every time a option is selected. Using .shuffled()
    
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false // showingScore will be false until it needs be shown
    @State private var scoreTitle = "" // scoreTitle will be modify according to the current score
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack(spacing:30){
                
                VStack{
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                    
                }
                
                ForEach(0..<3) { number in
                    Button { // for each button
                        flagTapped(number) // use func to check if answer is correct
                    } label: {
                        Image(countries[number])
                    }}
            }
        }// end of ZStack
        // add alert (Correct/Wrong, isPresented: with Current score)
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion) // Show a button to continue
            // when pressing button, call func of askQUESTION to keep going
        } message: { // once the button is pressed
            Text("Your score is ???") // show message
        }
    }
    // Function to test if selection was correct
    // comparing the random index number with the correct answer
        func flagTapped(_ number: Int){
            if number == correctAnswer{
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }
            showingScore = true // always show score
        }
        func askQuestion(){ // function to keep asking questions
            countries.shuffle() // every time a question is selected, shuffle the array
            correctAnswer = Int.random(in: 0...2)
            
        }
    }

#Preview {
    ContentView()
}
