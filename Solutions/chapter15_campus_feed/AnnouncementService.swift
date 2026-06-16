import Foundation

enum AnnouncementError: Error {
    case badServerResponse
    case decodingFailed
}

protocol AnnouncementServiceProtocol {
    func fetchAnnouncements() async throws -> [CampusAnnouncement]
}

struct LiveAnnouncementService: AnnouncementServiceProtocol {
    private let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

    func fetchAnnouncements() async throws -> [CampusAnnouncement] {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw AnnouncementError.badServerResponse
        }

        do {
            return try JSONDecoder().decode([CampusAnnouncement].self, from: data)
        } catch {
            throw AnnouncementError.decodingFailed
        }
    }
}

struct MockAnnouncementService: AnnouncementServiceProtocol {
    func fetchAnnouncements() async throws -> [CampusAnnouncement] {
        [
            CampusAnnouncement(
                id: 1,
                title: "Club Fair Friday",
                body: "Meet student organizations in the quad."
            ),
            CampusAnnouncement(
                id: 2,
                title: "Library Extended Hours",
                body: "Open until midnight during finals week."
            )
        ]
    }
}
