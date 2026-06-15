import SwiftUI

struct EventCard: View {
    let eventTitle: String
    let location: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(eventTitle)
                .font(.title2)
                .fontWeight(.bold)

            Text(location)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}
