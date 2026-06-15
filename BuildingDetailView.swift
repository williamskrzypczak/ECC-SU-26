import SwiftUI

struct BuildingDetailView: View {
    let building: CampusBuilding
    @Binding var navPath: NavigationPath

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(building.name)
                .font(.largeTitle)

            Text(building.description)
                .foregroundColor(.secondary)

            Text("Rooms: \(building.roomCount)")
                .font(.headline)

            Button("Back to Building List") {
                navPath.removeLast()
            }
            .buttonStyle(.bordered)
            .padding(.top, 8)
        }
        .padding()
        .navigationTitle(building.name)
    }
}
