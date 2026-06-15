import SwiftUI

struct HomeTab: View {
    @State private var showingRSVPSheet = false

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "house.fill")
                .font(.largeTitle)

            Text("Campus Events")
                .font(.title2)

            Text("See upcoming study sessions and club meetings.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            Button("RSVP to Study Night") {
                showingRSVPSheet = true
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showingRSVPSheet) {
            RSVPSheet()
        }
    }
}
