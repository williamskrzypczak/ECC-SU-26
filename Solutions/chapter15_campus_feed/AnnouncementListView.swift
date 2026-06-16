import SwiftUI

struct AnnouncementListView: View {
    @ObservedObject var viewModel: AnnouncementListViewModel

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading && viewModel.announcements.isEmpty {
                    ProgressView("Loading announcements…")
                } else if let errorMessage = viewModel.errorMessage,
                          viewModel.announcements.isEmpty {
                    ContentUnavailableView(
                        "Unable to Load",
                        systemImage: "wifi.exclamationmark",
                        description: Text(errorMessage)
                    )
                } else {
                    List(viewModel.announcements) { announcement in
                        VStack(alignment: .leading, spacing: 4) {
                            Text(announcement.title)
                                .font(.headline)
                                .lineLimit(2)
                            Text(announcement.body)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .lineLimit(2)
                        }
                        .padding(.vertical, 4)
                    }
                    .refreshable {
                        await viewModel.loadAnnouncements()
                    }
                }
            }
            .navigationTitle("Campus Feed")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Refresh") {
                        Task {
                            await viewModel.loadAnnouncements()
                        }
                    }
                }
            }
            .task {
                await viewModel.loadAnnouncements()
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = AnnouncementListViewModel()

    var body: some View {
        AnnouncementListView(viewModel: viewModel)
    }
}

#Preview("Mock Data") {
    let viewModel = AnnouncementListViewModel(service: MockAnnouncementService())
    return AnnouncementListView(viewModel: viewModel)
        .task { await viewModel.loadAnnouncements() }
}
