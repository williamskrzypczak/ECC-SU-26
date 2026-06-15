import Foundation

struct CampusEvent: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let location: String
    let date: Date
}
