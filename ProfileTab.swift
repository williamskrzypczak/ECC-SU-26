import SwiftUI

struct ProfileTab: View {
    @State private var showingHelpPopover = false

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.crop.circle.fill")
                .font(.largeTitle)

            Text("Your Profile")
                .font(.title2)

            Text("Name: Your Name")

            Button {
                showingHelpPopover = true
            } label: {
                Label("Help", systemImage: "questionmark.circle")
            }
            .popover(isPresented: $showingHelpPopover) {
                Text("Update your profile in Settings. Contact your instructor for login help.")
                    .padding()
                    .frame(width: 260)
            }
        }
        .padding()
    }
}
