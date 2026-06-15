import SwiftUI

struct RSVPButton: View {
    @Binding var isGoing: Bool
    @Binding var rsvpCount: Int

    var body: some View {
        Button(isGoing ? "Cancel RSVP" : "Count Me In") {
            isGoing.toggle()
            if isGoing {
                rsvpCount += 1
            } else if rsvpCount > 0 {
                rsvpCount -= 1
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(isGoing ? .red : .blue)
    }
}
