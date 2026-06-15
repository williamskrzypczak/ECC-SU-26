# Chapter 11 Solution: Sample Written Answers

These are example responses for the analysis portions of the Chapter 11 lab. Your answers may differ if your reasoning is clear and tied to the campus events app.

## Part 1: Plan A vs Plan B Memo

**Which plan fits a class project with three events and no server?**

Plan A fits best. It has enough structure to stay organized without slowing down a small team.

**What extra cost does Plan B add for a new teammate?**

A new teammate must learn TCA, extra abstractions, and more folders before they can change one list screen. Onboarding takes days instead of hours.

**When might Plan B start to make sense?**

Plan B becomes worth discussing when the app has many screens sharing complex state, heavy side effects, or a large team working in parallel.

## Part 2: Problems in the Messy Sample

1. The View fetches data directly with `URLSession` instead of using a service.
2. Network code runs in `onAppear` inside the View, mixing UI and data layers.
3. UI state may update off the main thread when the callback returns.
4. There is no error handling if the network call fails.
5. The code cannot be unit tested without hitting a real API.
6. Data is parsed as a comma-separated string with no model type.
7. A new teammate cannot preview the screen without network access.

## Part 2: Scorecard Answers

| Question | Answer |
|----------|--------|
| Can you test data loading without the network? | No |
| Does the View avoid knowing about URLSession? | No |
| Is UI state updated on the main thread? | No |
| Could you swap mock data without rewriting the View? | No |
| Would a new teammate understand this file in under five minutes? | No |

## Part 4: Conway's Law (Sample Explanation)

The module map will likely have a View group owned by Alex, a Network/Data group owned by Bri, and a Settings group owned by Casey. Conway's Law predicts those team boundaries become software boundaries. If Alex and Bri rarely communicate, the handoff between UI and data may break. Integration bugs appear at that boundary unless they agree on protocols early.

## Part 5: Agency Theory Response

The club needs a simple, maintainable events list delivered in three weeks on a tight budget. The developer may gain portfolio material and higher fees by pushing TCA and eight modules. A polite question to ask: "Can you show us a smaller app you built with TCA and explain why our one-screen project needs it now?"

## Part 6: Clean Architecture Mapping

| File | Layer | Why |
|------|-------|-----|
| EventListView.swift | UI | Displays data and captures taps |
| EventListViewModel.swift | Application | Holds screen state and coordinates loading |
| CampusEvent.swift | Domain | Describes the event business object |
| MockEventService.swift | Data | Provides event data from a concrete source |

## Part 7: MVVM vs TCA Comparison (Sample)

| Factor | Simple MVVM | TCA |
|--------|-------------|-----|
| Learning curve for beginners | Low | High |
| Files needed for one list screen | About 5–8 | Many more |
| Preview and test friendliness | Good with fake services | Excellent at scale |
| Best when app grows to many features | Good up to medium size | Strong for large, complex apps |

**Recommendation:** Use MVVM for this class project. Consider TCA when the app has many interconnected features and a team ready to invest in the learning curve.

## Part 8: Architect Compromise

- Keep the View free of network code.
- Use one ViewModel for the events screen now, not five layers on day one.
- Define `EventServiceProtocol` so data access stays swappable.
- Revisit TCA only if the app grows beyond three simple screens.
- Document the agreed structure in a one-page diagram for the team.

**Three questions for a senior developer:**

1. At what project size would you introduce TCA instead of MVVM?
2. How should our team split files so Conway's Law works in our favor?
3. What is the smallest test we can write to prove our ViewModel is correct?

## Reflection Answers

1. **Why no one-size-fits-all architecture?** Every app has different size, team, and deadline constraints.
2. **Pattern vs architecture?** A pattern solves one recurring problem. Architecture is the overall structure combining many decisions.
3. **Conway's Law for team design?** You can organize teams around desired modules so communication lines match clean code boundaries.
4. **Fake service in this lab?** `EmptyEventService` and `ErrorEventService` let previews and tests show empty and error states without a real backend.

© 2024 Bulldog Ventures Inc. All rights reserved.
