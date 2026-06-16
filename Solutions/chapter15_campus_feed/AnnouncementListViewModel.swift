import Foundation

@MainActor
final class AnnouncementListViewModel: ObservableObject {
    @Published var announcements: [CampusAnnouncement] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let service: AnnouncementServiceProtocol

    init(service: AnnouncementServiceProtocol = LiveAnnouncementService()) {
        self.service = service
    }

    func loadAnnouncements() async {
        isLoading = true
        errorMessage = nil

        do {
            announcements = try await service.fetchAnnouncements()
        } catch {
            errorMessage = "Could not load announcements. Check your connection and try again."
        }

        isLoading = false
    }
}
