import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    let code: String
    let title: String
    let isFeatured: Bool
}

let courses: [Course] = [
    Course(code: "MAD 157", title: "SwiftUI Basics", isFeatured: true),
    Course(code: "MAD 158", title: "iOS Data", isFeatured: true),
    Course(code: "MAD 159", title: "App Design", isFeatured: false),
    Course(code: "MAD 160", title: "Core Data", isFeatured: false),
    Course(code: "MAD 161", title: "Networking", isFeatured: true),
    Course(code: "MAD 162", title: "Animations", isFeatured: false),
    Course(code: "MAD 163", title: "Testing", isFeatured: false),
    Course(code: "MAD 164", title: "App Store", isFeatured: false)
]

let adaptiveColumns = [GridItem(.adaptive(minimum: 140), spacing: 12)]
let featuredRows = [GridItem(.fixed(100))]
