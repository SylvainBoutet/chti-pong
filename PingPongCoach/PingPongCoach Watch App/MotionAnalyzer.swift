import Foundation
import Combine
import CoreMotion

@MainActor
final class MotionAnalyzer: ObservableObject {
    @Published private(set) var swingCount: Int = 0
    @Published private(set) var peakMagnitude: Double = 0  // max g reached during the session

    private let motionManager = CMMotionManager()
    nonisolated private let detector = SwingDetector()
    private let queue: OperationQueue = {
        let q = OperationQueue()
        q.name = "ChtiPong.Motion"
        q.maxConcurrentOperationCount = 1
        return q
    }()

    func start() {
        guard motionManager.isDeviceMotionAvailable else {
            print("[Motion] Device motion not available")
            return
        }
        motionManager.deviceMotionUpdateInterval = 1.0 / 50.0  // 50 Hz
        motionManager.startDeviceMotionUpdates(to: queue) { [weak self] motion, error in
            guard let self, let motion else {
                if let error { print("[Motion] Error: \(error)") }
                return
            }
            let a = motion.userAcceleration  // gravity already removed
            let magnitude = sqrt(a.x * a.x + a.y * a.y + a.z * a.z)
            let swing = self.detector.process(acceleration: a)

            Task { @MainActor in
                if magnitude > self.peakMagnitude {
                    self.peakMagnitude = magnitude
                }
                if let swing {
                    self.swingCount += 1
                    print("[Swing] #\(self.swingCount) mag=\(String(format: "%.2f", swing.magnitude))g")
                }
            }
        }
    }

    func stop() {
        motionManager.stopDeviceMotionUpdates()
    }

    func reset() {
        swingCount = 0
        peakMagnitude = 0
        detector.reset()
    }
}
