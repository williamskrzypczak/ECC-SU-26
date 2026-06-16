import SwiftUI
import SwiftData

struct NoteDetailView: View {
    @Bindable var note: CampusNote

    var body: some View {
        Form {
            TextField("Title", text: $note.title)
            TextField("Body", text: $note.body, axis: .vertical)
                .lineLimit(3...8)
            Toggle("Pin this note", isOn: $note.isPinned)
        }
        .navigationTitle("Edit Note")
    }
}
