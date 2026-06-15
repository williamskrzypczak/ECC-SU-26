import SwiftUI

struct CourseCard: View {
    let course: Course
    let isSelected: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(course.code)
                .font(.caption)
                .fontWeight(.bold)

            Text(course.title)
                .font(.subheadline)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity, minHeight: 80, alignment: .leading)
        .padding()
        .background(isSelected ? Color.blue.opacity(0.2) : Color(.systemGray6))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.blue : Color.clear, lineWidth: 2)
        )
        .cornerRadius(10)
    }
}
