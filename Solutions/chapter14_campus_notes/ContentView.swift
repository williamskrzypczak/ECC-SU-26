import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \CampusNote.createdAt, order: .reverse) private var notes: [CampusNote]
    @State private var newTitle = ""

    var body: some View {
        NavigationStack {
            List {
                ForEach(notes) { note in
                    NavigationLink(value: note) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(note.title)
                                .font(.headline)
                            if note.isPinned {
                                Text("Pinned")
                                    .font(.caption)
                                    .foregroundStyle(.orange)
                            }
                            if let folderName = note.folder?.name {
                                Text(folderName)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteNotes)
            }
            .navigationDestination(for: CampusNote.self) { note in
                NoteDetailView(note: note)
            }
            .navigationTitle("Campus Notes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Sample") {
                        addSampleNote()
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                HStack {
                    TextField("Note title", text: $newTitle)
                        .textFieldStyle(.roundedBorder)
                    Button("Add") {
                        addNote()
                    }
                    .disabled(newTitle.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                .padding()
            }
            .overlay {
                if notes.isEmpty {
                    ContentUnavailableView(
                        "No Notes Yet",
                        systemImage: "note.text",
                        description: Text("Add your first campus note.")
                    )
                }
            }
        }
    }

    private func addNote() {
        let trimmed = newTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        modelContext.insert(CampusNote(title: trimmed))
        newTitle = ""
    }

    private func addSampleNote() {
        let folder = CampusFolder(name: "MAD 157")
        let note = CampusNote(title: "Study SwiftData", body: "Finish lab by Friday.")
        note.folder = folder
        folder.notes.append(note)
        modelContext.insert(folder)
        modelContext.insert(note)
    }

    private func deleteNotes(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(notes[index])
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [CampusNote.self, CampusFolder.self], inMemory: true)
}
