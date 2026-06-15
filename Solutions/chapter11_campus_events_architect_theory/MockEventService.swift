import Foundation

struct MockEventService: EventServiceProtocol {
    func fetchEvents() -> [CampusEvent] {
        [
            CampusEvent(title: "Study Jam", location: "Library Room 204", date: .now),
            CampusEvent(title: "Club Fair", location: "Student Center", date: .now.addingTimeInterval(86400)),
            CampusEvent(title: "Basketball Game", location: "Gymnasium", date: .now.addingTimeInterval(172800))
        ]
    }
}
