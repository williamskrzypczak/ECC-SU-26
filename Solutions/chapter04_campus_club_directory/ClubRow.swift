import SwiftUI

struct ClubRow: View {
    let club: Club

    var body: some View {
        HStack {
            Text(club.section)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 32, height: 32)
                .background(Color.blue)
                .cornerRadius(8)

            Text(club.name)
                .font(.body)

            Spacer()
        }
        .padding(.vertical, 4)
    }
}
