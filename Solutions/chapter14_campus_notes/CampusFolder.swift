import Foundation
import SwiftData

@Model
final class CampusFolder {
    var name: String

    @Relationship(deleteRule: .cascade, inverse: \CampusNote.folder)
    var notes: [CampusNote]

    init(name: String, notes: [CampusNote] = []) {
        self.name = name
        self.notes = notes
    }
}
