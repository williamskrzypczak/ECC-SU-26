# Chapter 11 Solution: Campus Events Architect (Theory Extensions)

## Setup

1. Start from the Chapter 10 solution project, or use all files in this folder.
2. Add `EmptyEventService.swift` to the project.
3. Replace `EventListViewModel.swift` and `EventListView.swift` with the versions here.

## Code Changes from Chapter 10

- `loadEvents()` sets an error message when the service returns an empty array
- `EmptyEventService` and `ErrorEventService` act as fake implementations
- Three SwiftUI previews: Loaded Events, Empty State, Error State

## What You Should See in Previews

- **Loaded Events:** Three campus events in a list
- **Empty State:** Red error text after loading with empty service
- **Error State:** Same error message using `ErrorEventService`

## Written Deliverables

See `SAMPLE_ANSWERS.md` for example responses to the analysis portions of the lab.

## Files

All Chapter 10 files plus:

- `EmptyEventService.swift` — includes `EmptyEventService` and `ErrorEventService`
- `EventListViewModel.swift` — updated `loadEvents()`
- `EventListView.swift` — three preview variants
- `SAMPLE_ANSWERS.md` — sample written answers
