import Foundation

struct GameSession: Identifiable, Codable, Hashable {
    let id: UUID
    let date: Date              // session start
    let duration: TimeInterval  // seconds
    let swingCount: Int
    let peakMagnitude: Double   // max g reached
    let scoreMe: Int
    let scoreOpponent: Int
    let activeEnergy: Double    // kcal

    init(id: UUID = UUID(),
         date: Date,
         duration: TimeInterval,
         swingCount: Int,
         peakMagnitude: Double,
         scoreMe: Int,
         scoreOpponent: Int,
         activeEnergy: Double) {
        self.id = id
        self.date = date
        self.duration = duration
        self.swingCount = swingCount
        self.peakMagnitude = peakMagnitude
        self.scoreMe = scoreMe
        self.scoreOpponent = scoreOpponent
        self.activeEnergy = activeEnergy
    }
}
