import SwiftUI
import SwiftData

@main
struct CampusNotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [CampusNote.self, CampusFolder.self])
    }
}
