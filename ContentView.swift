import SwiftUI

struct ContentView: View {
    @State private var rsvpCount = 0
    @State private var isGoing = false
    @State private var wantsReminder = false
    @State private var studentName = ""
    @State private var selectedSession = "6:00 PM"

    let sessions = ["5:00 PM", "6:00 PM", "7:00 PM"]

    var body: some View {
        VStack(spacing: 20) {
            EventCard(
                eventTitle: "SwiftUI Study Night",
                location: "MCC Student Center, Room 204"
            )

            Text("RSVPs so far: \(rsvpCount)")
                .font(.headline)

            if isGoing {
                Text("You are signed up!")
                    .foregroundColor(.green)
                    .fontWeight(.semibold)
            } else {
                Text("Tap the button to RSVP.")
                    .foregroundColor(.secondary)
            }

            RSVPButton(isGoing: $isGoing, rsvpCount: $rsvpCount)

            Divider()

            Toggle("Send me a reminder", isOn: $wantsReminder)

            TextField("Enter your name", text: $studentName)
                .textFieldStyle(.roundedBorder)

            if !studentName.isEmpty {
                Text("Hello, \(studentName)!")
                    .font(.callout)
                    .foregroundColor(.blue)
            }

            Picker("Choose a session", selection: $selectedSession) {
                ForEach(sessions, id: \.self) { session in
                    Text(session).tag(session)
                }
            }
            .pickerStyle(.segmented)

            Text("You chose the \(selectedSession) session.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
