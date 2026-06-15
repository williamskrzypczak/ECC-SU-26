import Foundation

protocol EventServiceProtocol {
    func fetchEvents() -> [CampusEvent]
}
