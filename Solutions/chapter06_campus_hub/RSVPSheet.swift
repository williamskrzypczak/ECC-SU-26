import SwiftUI

struct RSVPSheet: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("SwiftUI Study Night")
                    .font(.title2)

                Text("Friday at 6:00 PM in Room 204")
                    .foregroundColor(.secondary)

                Button("Confirm RSVP") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("RSVP")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
