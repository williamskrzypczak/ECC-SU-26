import Foundation

final class EventListViewModel: ObservableObject {
    @Published var events: [CampusEvent] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let eventService: EventServiceProtocol

    init(eventService: EventServiceProtocol) {
        self.eventService = eventService
    }

    func loadEvents() {
        isLoading = true
        errorMessage = nil
        let results = eventService.fetchEvents()
        events = results
        if results.isEmpty {
            errorMessage = "No events available right now."
        }
        isLoading = false
    }
}
