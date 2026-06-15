import Foundation

extension DateFormatter {
    static let eventDisplay: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
}

func formatDate(_ date: Date, using formatter: DateFormatter) -> String {
    formatter.string(from: date)
}
