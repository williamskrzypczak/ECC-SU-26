# Chapter 10 Solution: Campus Events Architect

## Setup

1. Create a new App project named `CampusEventsArchitect`.
2. Add every Swift file in this folder to the project.
3. Delete the default ContentView if Xcode created a duplicate.

## Architecture Layers

```
EventListView          → UI layer
EventListViewModel     → Application layer (state + actions)
CampusEvent            → Domain layer (model)
MockEventService       → Data layer (service implementation)
EventServiceProtocol   → Abstraction (dependency inversion)
```

## What You Should See

- "MCC Campus" subtitle above the event list
- Three events with formatted dates
- Refresh button reloads the list
- Loading spinner appears briefly on first load

## Files

- `CampusEvent.swift`
- `EventServiceProtocol.swift`
- `MockEventService.swift`
- `EventListViewModel.swift`
- `EventListView.swift`
- `EventFormatting.swift`
- `ContentView.swift`
- `CampusEventsArchitectApp.swift` (includes `AppSettings`)
