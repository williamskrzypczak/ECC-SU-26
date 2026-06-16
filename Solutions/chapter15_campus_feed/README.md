# Chapter 15 Solution: Campus Feed

## Setup

1. Create a new App project named `CampusFeed`.
2. Set deployment target to iOS 16 or later.
3. Add all Swift files in this folder.
4. Replace the default app file with `CampusFeedApp.swift`.
5. Run with an active internet connection in the simulator or on a device.

## What You Should See

- Loading spinner on first launch
- List of announcements from JSONPlaceholder
- Pull-to-refresh and toolbar Refresh button
- Friendly error message when airplane mode is on
- Mock preview works without network

## Files

- `CampusAnnouncement.swift` — `Decodable` model matching API JSON
- `AnnouncementService.swift` — protocol, live service, mock service, errors
- `AnnouncementListViewModel.swift` — `@Published` state and async load
- `AnnouncementListView.swift` — feed UI and `ContentView` wrapper
- `CampusFeedApp.swift` — app entry point

## Written Answers

See `SAMPLE_ANSWERS.md` for sample responses to Part 1 and Part 7 reflection questions.

© 2024 Bulldog Ventures Inc. All rights reserved.
