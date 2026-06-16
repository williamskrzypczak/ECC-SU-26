# Chapter 14 Solution: Campus Notes

## Setup

1. Create a new App project named `CampusNotes`.
2. Set deployment target to iOS 17 or later.
3. When Xcode asks about storage, choose **None**.
4. Add all Swift files in this folder.
5. Replace the default app file with `CampusNotesApp.swift`.

## What You Should See

- Empty state on first launch
- Add notes with the bottom text field
- Sample button creates a folder-linked note
- Swipe to delete notes
- Tap a note to edit title, body, and pin status
- Notes persist after force quit and relaunch

## Files

- `CampusNote.swift` — `@Model` note with optional folder link
- `CampusFolder.swift` — `@Model` folder with cascade relationship
- `NoteDetailView.swift` — edit screen using `@Bindable`
- `ContentView.swift` — list, add, delete, and navigation
- `CampusNotesApp.swift` — `ModelContainer` setup

## Written Answers

See `SAMPLE_ANSWERS.md` for sample responses to Part 1 and Part 7 reflection questions.

© 2024 Bulldog Ventures Inc. All rights reserved.
