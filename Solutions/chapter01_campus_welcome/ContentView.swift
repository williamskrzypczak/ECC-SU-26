import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Campus Welcome")
                .font(.largeTitle)
                .foregroundColor(.blue)

            Text("Built by Your Name")
                .font(.headline)
                .foregroundColor(.secondary)
        }
        .padding()
        .border(Color.gray, width: 1)
    }
}

#Preview {
    ContentView()
}
