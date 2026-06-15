import Foundation

struct Club: Identifiable {
    let id = UUID()
    let name: String
    let section: String
}

let campusClubs: [Club] = [
    Club(name: "Coding Club", section: "C"),
    Club(name: "Creative Writing", section: "C"),
    Club(name: "Debate Team", section: "D"),
    Club(name: "Design Society", section: "D"),
    Club(name: "Esports League", section: "E"),
    Club(name: "Engineering Club", section: "E"),
    Club(name: "Film Club", section: "F"),
    Club(name: "Fitness Group", section: "F"),
    Club(name: "Gaming Guild", section: "G"),
    Club(name: "Garden Club", section: "G")
]
