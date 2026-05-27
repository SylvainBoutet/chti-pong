import Foundation
import Combine
import HealthKit

@MainActor
final class WorkoutManager: NSObject, ObservableObject {
    @Published private(set) var isRunning = false
    @Published private(set) var heartRate: Double = 0
    @Published private(set) var activeEnergy: Double = 0
    @Published private(set) var startDate: Date?

    private let healthStore = HKHealthStore()
    private var session: HKWorkoutSession?
    private var builder: HKLiveWorkoutBuilder?

    func requestAuthorization() async {
        let typesToShare: Set = [HKQuantityType.workoutType()]
        let typesToRead: Set<HKObjectType> = [
            HKQuantityType.workoutType(),
            HKQuantityType(.heartRate),
            HKQuantityType(.activeEnergyBurned)
        ]
        do {
            try await healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead)
        } catch {
            print("[HealthKit] Authorization failed: \(error)")
        }
    }

    func start() {
        let config = HKWorkoutConfiguration()
        config.activityType = .tableTennis
        config.locationType = .indoor

        do {
            let session = try HKWorkoutSession(healthStore: healthStore, configuration: config)
            let builder = session.associatedWorkoutBuilder()
            builder.dataSource = HKLiveWorkoutDataSource(
                healthStore: healthStore,
                workoutConfiguration: config
            )
            session.delegate = self
            builder.delegate = self

            self.session = session
            self.builder = builder

            let now = Date()
            session.startActivity(with: now)
            builder.beginCollection(withStart: now) { _, error in
                if let error { print("[Workout] beginCollection error: \(error)") }
            }

            self.startDate = now
            self.isRunning = true
        } catch {
            print("[Workout] Failed to start: \(error)")
        }
    }

    func stop() {
        guard let session, let builder else { return }
        session.end()
        builder.endCollection(withEnd: Date()) { [weak self, builder] _, error in
            if let error { print("[Workout] endCollection error: \(error)") }
            builder.finishWorkout { [weak self] _, error in
                if let error { print("[Workout] finishWorkout error: \(error)") }
                Task { @MainActor [weak self] in
                    self?.cleanup()
                }
            }
        }
        isRunning = false
    }

    private func cleanup() {
        session = nil
        builder = nil
    }
}

extension WorkoutManager: HKWorkoutSessionDelegate {
    nonisolated func workoutSession(_ workoutSession: HKWorkoutSession,
                                    didChangeTo toState: HKWorkoutSessionState,
                                    from fromState: HKWorkoutSessionState,
                                    date: Date) {
        // Lifecycle hook — extend here for paused/resumed UI states.
    }

    nonisolated func workoutSession(_ workoutSession: HKWorkoutSession,
                                    didFailWithError error: Error) {
        print("[Workout] Session failed: \(error)")
    }
}

extension WorkoutManager: HKLiveWorkoutBuilderDelegate {
    nonisolated func workoutBuilderDidCollectEvent(_ workoutBuilder: HKLiveWorkoutBuilder) {}

    nonisolated func workoutBuilder(_ workoutBuilder: HKLiveWorkoutBuilder,
                                    didCollectDataOf collectedTypes: Set<HKSampleType>) {
        for type in collectedTypes {
            guard let quantityType = type as? HKQuantityType,
                  let stats = workoutBuilder.statistics(for: quantityType) else { continue }

            if quantityType == HKQuantityType(.heartRate) {
                let bpmUnit = HKUnit.count().unitDivided(by: .minute())
                let value = stats.mostRecentQuantity()?.doubleValue(for: bpmUnit) ?? 0
                Task { @MainActor in self.heartRate = value }
            } else if quantityType == HKQuantityType(.activeEnergyBurned) {
                let value = stats.sumQuantity()?.doubleValue(for: .kilocalorie()) ?? 0
                Task { @MainActor in self.activeEnergy = value }
            }
        }
    }
}
