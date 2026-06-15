import SwiftUI

struct ClubsTab: View {
    @State private var showingLeaveAlert = false

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.3.fill")
                .font(.largeTitle)

            Text("Campus Clubs")
                .font(.title2)

            Button("Leave Coding Club") {
                showingLeaveAlert = true
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
        .padding()
        .alert("Leave Club?", isPresented: $showingLeaveAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Leave", role: .destructive) { }
        } message: {
            Text("Are you sure you want to leave the Coding Club?")
        }
    }
}
