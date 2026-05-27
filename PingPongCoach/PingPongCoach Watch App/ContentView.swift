import SwiftUI

struct ContentView: View {
    @StateObject private var workout = WorkoutManager()
    @StateObject private var motion = MotionAnalyzer()
    @StateObject private var score = ScoreTracker()
    @StateObject private var sessionStore = SessionStore()
    @State private var elapsed: TimeInterval = 0
    @State private var ticker: Timer?

    var body: some View {
        NavigationStack {
            Group {
                if workout.isRunning {
                    runningTabView
                } else {
                    idleView
                }
            }
            .task {
                await workout.requestAuthorization()
            }
        }
    }

    private var idleView: some View {
        VStack(spacing: 10) {
            Image(systemName: "figure.table.tennis")
                .font(.system(size: 36))
                .foregroundStyle(.tint)
            Text("Ch'ti Pong")
                .font(.headline)
            Button(action: start) {
                Label("Start", systemImage: "play.fill")
            }
            .tint(.green)

            NavigationLink {
                HistoryView(store: sessionStore)
            } label: {
                Label("History", systemImage: "clock.arrow.circlepath")
                    .font(.caption2)
            }
            .buttonStyle(.bordered)
            .controlSize(.small)
        }
        .padding(.horizontal)
    }

    private var runningTabView: some View {
        TabView {
            statsView.tag(0)
            scoreView.tag(1)
        }
        .tabViewStyle(.page)
    }

    private var statsView: some View {
        VStack(spacing: 4) {
            Text(timeString(elapsed))
                .font(.system(.title2, design: .rounded).monospacedDigit())

            HStack {
                stat("Swings", "\(motion.swingCount)", color: .green)
                stat("BPM", "\(Int(workout.heartRate))", color: .red)
            }
            HStack {
                stat("kcal", "\(Int(workout.activeEnergy))", color: .orange)
                stat("Peak", String(format: "%.1fg", motion.peakMagnitude), color: .blue)
            }

            Button(role: .destructive, action: stop) {
                Label("Stop", systemImage: "stop.fill")
            }
            .padding(.top, 4)
        }
        .padding(.horizontal)
    }

    private var scoreView: some View {
        VStack(spacing: 6) {
            HStack(spacing: 0) {
                scorePanel(label: "Me", value: score.me, color: .green) {
                    score.incrementMe()
                } onLongPress: {
                    score.decrementMe()
                }
                Divider()
                scorePanel(label: "Opp", value: score.opponent, color: .red) {
                    score.incrementOpponent()
                } onLongPress: {
                    score.decrementOpponent()
                }
            }
            Button("Reset") { score.reset() }
                .font(.caption2)
                .foregroundStyle(.secondary)
                .buttonStyle(.plain)
        }
        .padding(.horizontal, 4)
    }

    private func scorePanel(label: LocalizedStringKey,
                            value: Int,
                            color: Color,
                            action: @escaping () -> Void,
                            onLongPress: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack(spacing: 0) {
                Text(verbatim: "\(value)")
                    .font(.system(size: 48, weight: .bold, design: .rounded).monospacedDigit())
                    .foregroundStyle(color)
                Text(label)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, minHeight: 110)
        }
        .buttonStyle(.plain)
        .simultaneousGesture(LongPressGesture().onEnded { _ in onLongPress() })
    }

    private func stat(_ label: LocalizedStringKey, _ value: String, color: Color) -> some View {
        VStack(spacing: 0) {
            Text(verbatim: value)
                .font(.system(.body, design: .rounded).bold())
                .foregroundStyle(color)
            Text(label)
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
    }

    private func start() {
        motion.reset()
        score.reset()
        workout.start()
        motion.start()
        elapsed = 0
        ticker = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            Task { @MainActor in
                if let start = workout.startDate {
                    elapsed = Date().timeIntervalSince(start)
                }
            }
        }
    }

    private func stop() {
        if let start = workout.startDate {
            let session = GameSession(
                date: start,
                duration: Date().timeIntervalSince(start),
                swingCount: motion.swingCount,
                peakMagnitude: motion.peakMagnitude,
                scoreMe: score.me,
                scoreOpponent: score.opponent,
                activeEnergy: workout.activeEnergy
            )
            sessionStore.save(session)
        }

        motion.stop()
        workout.stop()
        ticker?.invalidate()
        ticker = nil
    }

    private func timeString(_ t: TimeInterval) -> String {
        let total = Int(t)
        return String(format: "%02d:%02d", total / 60, total % 60)
    }
}

#Preview {
    ContentView()
}
