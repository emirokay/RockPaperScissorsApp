import SwiftUI

struct ContentView: View {
	@State var playerChoice = ""
	@State var compChoice = ""
	@State var result = ""
	
	@State var playerScore = 0
	@State var compScore = 0
	@State var drawScore = 0
	@State var backGroundColor: Color = .yellow
	
	var body: some View {
		
		VStack(spacing: 20){
			HStack {
				scoreView(label: "Player", score: playerScore)
				Spacer()
				scoreView(label: "Draws", score: drawScore)
				Spacer()
				scoreView(label: "Comp", score: compScore)
			}
			.padding()
			
			Button{
				reset()
			}label: {
				VStack {
					Image(systemName: "pill.fill")
						.font(.subheadline)
					Text("Reset")
						.font(.caption)
				}
			}
			
			Spacer()
			choiceView(title: "Computer", choice: compChoice, image: "figure.fencing")
			
			Spacer()
			
			Text("\(result) ")
				.font(.largeTitle)
				.bold()
			
			Spacer()
			choiceView(title: "Player", choice: playerChoice, image: "figure.archery")
			
			Spacer()
			
			HStack {
				ForEach(Sign.allCases, id: \.self) { sign in
					Button {
						playerChoice = sign.name
						compChoice = Sign.allCases.randomElement()?.name ?? ""
						result = determineWinner(playerChoice: playerChoice, compChoice: compChoice)
					} label: {
						Image(sign.name)
							.font(.system(size: 80))
							.frame(width: 100, height: 100)
					}
				}
			}
			Spacer()
		}
		.padding()
		.background(backGroundColor)
	}
	
	enum Sign: CaseIterable {
		case rock, paper, scissors
		
		var name: String {
			switch self {
			case .rock: return "rock"
			case .paper: return "paper"
			case .scissors: return "scissors"
			}
		}
		
	}
	
	struct scoreView: View {
		var label: String
		var score: Int
		
		var body: some View {
			VStack {
				Text(label)
					.font(.headline)
					.padding(5)
				Text("\(score)")
					.font(.largeTitle)
					.bold()
			}
		}
	}
	
	func reset() {
		playerChoice = ""
		compChoice = ""
		result = ""
		
		playerScore = 0
		compScore = 0
		drawScore = 0
		backGroundColor = .yellow
	}
	
	func choiceView(title: String, choice: String, image: String) -> some View {
		VStack {
			HStack{
				Image(systemName: image)
					.font(.title)
				Text(choice.isEmpty ? "\(title) thinks.." : "\(title) chose:" )
					.font(.title2)
			}
			
			Text(choice.isEmpty ? " " : choice)
				.textCase(.uppercase)
				.font(.largeTitle)
				.bold()
				.padding()
		}
	}
	
	func determineWinner(playerChoice: String, compChoice: String) -> String {
		if playerChoice == compChoice {
			drawScore += 1
			backGroundColor = .yellow
			return "It's a Tie!"
		} else if (playerChoice == "rock" && compChoice == "scissors") ||
					(playerChoice == "paper" && compChoice == "rock") ||
					(playerChoice == "scissors" && compChoice == "paper") {
			playerScore += 1
			backGroundColor = .green
			return "You Win!"
		} else {
			compScore += 1
			backGroundColor = .red
			return "You Lose!"
		}
	}
	
	
}

#Preview {
	ContentView()
}
