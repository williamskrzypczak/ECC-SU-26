import Foundation

struct EmptyEventService: EventServiceProtocol {
    func fetchEvents() -> [CampusEvent] {
        []
    }
}

struct ErrorEventService: EventServiceProtocol {
    func fetchEvents() -> [CampusEvent] {
        []
    }
}
