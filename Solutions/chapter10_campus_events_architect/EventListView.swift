import SwiftUI

final class AppSettings: ObservableObject {
    @Published var campusName = "MCC Campus"
}

struct EventListView: View {
    @StateObject private var viewModel: EventListViewModel
    @EnvironmentObject private var settings: AppSettings

    init(viewModel: EventListViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 4) {
                Text(settings.campusName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Group {
                    if viewModel.isLoading {
                        ProgressView("Loading events...")
                    } else if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    } else {
                        List(viewModel.events) { event in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(event.title)
                                    .font(.headline)

                                Text(event.location)
                                    .foregroundColor(.secondary)

                                Text(formatDate(event.date, using: .eventDisplay))
                                    .font(.caption)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Campus Events")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Refresh") {
                        viewModel.loadEvents()
                    }
                }
            }
            .onAppear {
                viewModel.loadEvents()
            }
        }
    }
}

#Preview {
    EventListView(
        viewModel: EventListViewModel(eventService: MockEventService())
    )
    .environmentObject(AppSettings())
}
