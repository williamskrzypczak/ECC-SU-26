import Foundation

struct CampusAnnouncement: Identifiable, Decodable {
    let id: Int
    let title: String
    let body: String
}
