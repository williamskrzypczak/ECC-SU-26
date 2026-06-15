import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @FocusState private var isSearchFocused: Bool

    let sections = ["C", "D", "E", "F", "G"]

    var filteredClubs: [Club] {
        if searchText.isEmpty {
            return campusClubs
        }
        return campusClubs.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        NavigationStack {
            ScrollViewReader { proxy in
                VStack(spacing: 8) {
                    HStack {
                        TextField("Search clubs", text: $searchText)
                            .textFieldStyle(.roundedBorder)
                            .focused($isSearchFocused)

                        Button("Done") {
                            isSearchFocused = false
                        }
                    }
                    .padding(.horizontal)

                    HStack {
                        ForEach(sections, id: \.self) { section in
                            Button(section) {
                                withAnimation {
                                    proxy.scrollTo(section, anchor: .top)
                                }
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                    .padding(.horizontal)

                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 16) {
                            ForEach(sections, id: \.self) { section in
                                Text(section)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .id(section)

                                ForEach(filteredClubs.filter { $0.section == section }) { club in
                                    ClubRow(club: club)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Campus Clubs")
        }
    }
}

#Preview {
    ContentView()
}
