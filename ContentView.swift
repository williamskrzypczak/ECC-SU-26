import SwiftUI

struct SchedulePreview: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 16, verticalSpacing: 8) {
            GridRow {
                Text("Course")
                    .fontWeight(.bold)
                Text("Room")
                    .fontWeight(.bold)
            }
            GridRow {
                Text("SwiftUI I")
                Text("204")
            }
            GridRow {
                Text("SwiftUI II")
                Text("210")
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct ContentView: View {
    @State private var selectedCourseID: UUID?

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                SchedulePreview()
                    .padding(.horizontal)

                Text("Featured Courses")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: featuredRows, spacing: 12) {
                        ForEach(courses.filter { $0.isFeatured }) { course in
                            VStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                Text(course.code)
                                    .font(.caption)
                            }
                            .frame(width: 100, height: 100)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }

                Text("All Courses")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                ScrollView {
                    LazyVGrid(columns: adaptiveColumns, spacing: 12) {
                        ForEach(courses) { course in
                            CourseCard(
                                course: course,
                                isSelected: selectedCourseID == course.id
                            )
                            .onTapGesture {
                                selectedCourseID = course.id
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Course Catalog")
        }
    }
}

#Preview {
    ContentView()
}
