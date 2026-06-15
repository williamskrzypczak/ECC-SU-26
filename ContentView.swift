import SwiftUI

struct ContentView: View {
    var body: some View {
        EventListView(
            viewModel: EventListViewModel(eventService: MockEventService())
        )
    }
}

#Preview {
    ContentView()
        .environmentObject(AppSettings())
}
