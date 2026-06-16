import SwiftUI

struct ContentView: View {
    @State private var navPath = NavigationPath()
    @State private var showingAbout = false

    private let buildings = [
        CampusBuilding(name: "Library", description: "Study rooms and research help.", roomCount: 42),
        CampusBuilding(name: "Science Hall", description: "Labs and lecture halls.", roomCount: 28),
        CampusBuilding(name: "Student Center", description: "Dining, clubs, and events.", roomCount: 15),
        CampusBuilding(name: "Gymnasium", description: "Fitness and intramural sports.", roomCount: 8)
    ]

    var body: some View {
        NavigationStack(path: $navPath) {
            VStack(spacing: 16) {
                Button("Go to Library") {
                    if let library = buildings.first(where: { $0.name == "Library" }) {
                        navPath.append(library)
                    }
                }
                .buttonStyle(.borderedProminent)

                List(buildings) { building in
                    NavigationLink(building.name, value: building)
                }
            }
            .navigationDestination(for: CampusBuilding.self) { building in
                BuildingDetailView(building: building, navPath: $navPath)
            }
            .navigationDestination(isPresented: $showingAbout) {
                AboutView()
            }
            .navigationTitle("Campus Buildings")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Help") {
                        showingAbout = true
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
