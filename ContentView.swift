import SwiftUI

struct EventHeader: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.blue)

            Text(subtitle)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 16) {
                EventHeader(
                    title: "SwiftUI Study Night",
                    subtitle: "MCC Student Center"
                )

                Divider()

                HStack {
                    Label("Friday, 6:00 PM", systemImage: "calendar")
                    Spacer()
                    Label("Room 204", systemImage: "mappin.and.ellipse")
                }
                .font(.subheadline)

                Divider()

                Text("Join us for a hands-on SwiftUI review session.")
                    .font(.body)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.systemGray6))
            .cornerRadius(12)

            Text("Featured")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.orange)
                .cornerRadius(6)
                .padding(12)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
