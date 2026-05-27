import Foundation
import CoreMotion

// @unchecked Sendable: mutation is serialized by the caller (motion queue is serial).
final class SwingDetector: @unchecked Sendable {
    // Tunable. Initial guesses — refine with real captures.
    var peakThreshold: Double = 3.0      // g (userAcceleration, gravity removed)
    var cooldown: TimeInterval = 0.25    // min interval between hits

    private var lastSwingDate: Date = .distantPast

    nonisolated init() {}

    func process(acceleration: CMAcceleration, at date: Date = Date()) -> Swing? {
        let magnitude = sqrt(
            acceleration.x * acceleration.x +
            acceleration.y * acceleration.y +
            acceleration.z * acceleration.z
        )

        guard magnitude >= peakThreshold,
              date.timeIntervalSince(lastSwingDate) >= cooldown else {
            return nil
        }

        lastSwingDate = date
        return Swing(timestamp: date, magnitude: magnitude)
    }

    func reset() {
        lastSwingDate = .distantPast
    }
}
