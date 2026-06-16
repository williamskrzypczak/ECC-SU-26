import Foundation
import SwiftData

@Model
final class CampusNote {
    var title: String
    var body: String
    var createdAt: Date
    var isPinned: Bool
    var folder: CampusFolder?

    init(title: String, body: String = "", isPinned: Bool = false) {
        self.title = title
        self.body = body
        self.createdAt = Date()
        self.isPinned = isPinned
    }
}
