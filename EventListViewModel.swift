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
        events = eventService.fetchEvents()
        isLoading = false
    }
}
