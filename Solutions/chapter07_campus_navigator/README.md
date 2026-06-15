# Chapter 7 Solution: Campus Navigator

## Setup

1. Create a new App project named `CampusNavigator`.
2. Set deployment target to iOS 16 or later.
3. Add all Swift files in this folder.

## What You Should See

- List of four campus buildings
- Tapping a row pushes a detail screen
- "Go to Library" jumps directly to the Library detail
- Help toolbar button opens the About screen
- Back button and "Back to Building List" both pop the stack

## Files

- `CampusBuilding.swift` — Identifiable, Hashable model
- `BuildingDetailView.swift` — detail screen with NavigationPath binding
- `AboutView.swift` — help screen
- `ContentView.swift` — NavigationStack, destinations, toolbar
