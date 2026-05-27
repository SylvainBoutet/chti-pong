import SwiftUI

struct SessionDetailView: View {
    let session: GameSession

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                VStack(spacing: 2) {
                    Text(session.date, style: .date)
                        .font(.headline)
                    Text(session.date, style: .time)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }

                Divider()

                detailRow("Duration", durationString)
                detailRow("Swings", "\(session.swingCount)", color: .green)
                detailRow("Peak", String(format: "%.1f g", session.peakMagnitude), color: .blue)
                detailRow("Calories", "\(Int(session.activeEnergy)) kcal", color: .orange)
                detailRow("Score", "\(session.scoreMe) - \(session.scoreOpponent)")
            }
            .padding(.horizontal, 8)
        }
        .navigationTitle("Session")
    }

    private var durationString: String {
        let total = Int(session.duration)
        return String(format: "%02d:%02d", total / 60, total % 60)
    }

    private func detailRow(_ label: LocalizedStringKey, _ value: String, color: Color = .primary) -> some View {
        HStack {
            Text(label)
                .foregroundStyle(.secondary)
            Spacer()
            Text(verbatim: value)
                .foregroundStyle(color)
                .fontWeight(.semibold)
        }
        .font(.caption)
    }
}
