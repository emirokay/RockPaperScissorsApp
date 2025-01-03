# RockPaperScissorsApp
A simple and fun Rock Paper Scissors game built using Swift and SwiftUI. This app features dynamic score tracking, responsive UI feedback, and a vibrant design to make the classic game engaging on iOS devices.

## Screen Recording
https://github.com/user-attachments/assets/8aac525f-41f5-40dc-9d88-801c20295e68

## Features
- **Classic Gameplay**: Play Rock Paper Scissors against a computer opponent.
- **Dynamic Score Tracking**: Keep track of wins, losses, and draws in real-time.
- **Responsive UI Feedback**: Background color changes dynamically based on the result (win, lose, or draw).
- **Reset Option**: Start fresh anytime with the reset button.
- **Simple and Intuitive Design**: A single-view app with a clean, responsive layout.

## Technologies Used
- **Language**: Swift
- **Framework**: SwiftUI
- **Architecture**: Single-File Application

## How It Works
- The app uses an enum `Sign` to represent the three choices (rock, paper, scissors).
- The computer's choice is generated randomly from the `Sign` enum.
- The `determineWinner` function evaluates the player's choice against the computer's choice to determine the result and updates the scores and UI accordingly.
- A reset button resets all scores, choices, and the background color.

### Components
- **Score Tracking**: A `scoreView` struct displays the player's, computer's, and draw scores.
- **Choice View**: A reusable `choiceView` function provides visual feedback on the choices made by the player and the computer.
- **Dynamic Background**: Background color changes to green for a win, red for a loss, and yellow for a draw.

## Project Structure
This project is contained in a single Swift file: ContentView.swift.

### Key Functions
- determineWinner: Determines the outcome of each round.
- reset: Resets the scores and UI to their initial states.
- choiceView: Displays the current choices for the player and the computer.

## Getting Started

### Prerequisites
- **Xcode**: Version 12.0 or higher
- **iOS**: Deployment target of iOS 14.0 or higher
- **macOS**: Version 10.15 or higher

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/emirokay/RockPaperScissorsApp.git
2. Navigate to the Project Directory:
	```bash
	cd RockPaperScissorsApp
3. Open in Xcode:
	```bash
	open RockPaperScissorsApp.xcodeproj
4. Build and Run:
- Select a simulator or connect a physical device.
- Click the 'Run' button in Xcode to build and launch the app.

## Requirements
- Xcode: Version 12.0 or higher
- iOS: Deployment target of iOS 14.0 or higher

## How to Play
1. Select your choice (rock, paper, or scissors) by tapping the corresponding button.
2. The computer's choice will be displayed along with the result of the round.
3. Track your progress with dynamic score updates.
4. Reset the game anytime using the reset button.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Screenshots
<img width="550" alt="Screenshot 2024-11-27 at 21 33 05" src="https://github.com/user-attachments/assets/b646d48f-60fa-4ff4-a1ca-98c757859ae2">
<img width="550" alt="Screenshot 2024-11-27 at 21 33 11" src="https://github.com/user-attachments/assets/200bff6e-1b0f-4b0a-81bb-1df36331c80e">
<img width="550" alt="Screenshot 2024-11-27 at 21 33 18" src="https://github.com/user-attachments/assets/dd35223e-2d36-4cdd-b4ea-d35854cdb5d1">
<img width="550" alt="Screenshot 2024-11-27 at 21 33 25" src="https://github.com/user-attachments/assets/0f160f6f-2187-410f-9292-dc04e54c8989">
