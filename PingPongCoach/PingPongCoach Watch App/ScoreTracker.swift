import Foundation
import Combine

@MainActor
final class ScoreTracker: ObservableObject {
    @Published private(set) var me: Int = 0
    @Published private(set) var opponent: Int = 0

    func incrementMe() { me += 1 }
    func incrementOpponent() { opponent += 1 }

    func decrementMe() { if me > 0 { me -= 1 } }
    func decrementOpponent() { if opponent > 0 { opponent -= 1 } }

    func reset() {
        me = 0
        opponent = 0
    }
}
