import Foundation

struct CampusBuilding: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let roomCount: Int
}
