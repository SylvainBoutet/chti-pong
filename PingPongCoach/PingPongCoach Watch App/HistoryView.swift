import SwiftUI
import Charts

struct HistoryView: View {
    @ObservedObject var store: SessionStore

    var body: some View {
        Group {
            if store.sessions.isEmpty {
                emptyState
            } else {
                contentList
            }
        }
        .navigationTitle("History")
    }

    private var emptyState: some View {
        VStack(spacing: 8) {
            Image(systemName: "figure.table.tennis")
                .font(.largeTitle)
                .foregroundStyle(.secondary)
            Text("No sessions yet")
                .font(.headline)
                .foregroundStyle(.secondary)
        }
    }

    private var contentList: some View {
        List {
            if store.sessions.count >= 2 {
                Section {
                    peakChart
                        .frame(height: 80)
                } header: {
                    Text("Peak evolution")
                        .font(.caption2)
                }
            }
            Section {
                ForEach(store.sessions) { session in
                    NavigationLink {
                        SessionDetailView(session: session)
                    } label: {
                        sessionRow(session)
                    }
                }
                .onDelete(perform: delete)
            }
        }
    }

    private var peakChart: some View {
        // Reverse so most recent is at the right
        let data = Array(store.sessions.reversed())
        return Chart(data) { session in
            LineMark(
                x: .value("Date", session.date),
                y: .value("Peak (g)", session.peakMagnitude)
            )
            .interpolationMethod(.catmullRom)
            .foregroundStyle(.blue)

            PointMark(
                x: .value("Date", session.date),
                y: .value("Peak (g)", session.peakMagnitude)
            )
            .foregroundStyle(.blue)
            .symbolSize(25)
        }
        .chartXAxis(.hidden)
        .chartYAxis {
            AxisMarks(position: .leading, values: .automatic(desiredCount: 3))
        }
    }

    private func sessionRow(_ session: GameSession) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(session.date, style: .date)
                .font(.caption)
            HStack(spacing: 6) {
                Label("\(session.swingCount)", systemImage: "hand.raised.fill")
                    .foregroundStyle(.green)
                Label(String(format: "%.1fg", session.peakMagnitude), systemImage: "bolt.fill")
                    .foregroundStyle(.blue)
                Spacer()
                Text("\(session.scoreMe)-\(session.scoreOpponent)")
                    .foregroundStyle(.secondary)
            }
            .font(.caption2)
        }
    }

    private func delete(at offsets: IndexSet) {
        for index in offsets {
            store.delete(store.sessions[index])
        }
    }
}

#Preview {
    NavigationStack {
        HistoryView(store: SessionStore())
    }
}
