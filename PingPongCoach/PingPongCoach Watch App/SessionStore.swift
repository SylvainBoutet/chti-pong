import Foundation
import Combine

@MainActor
final class SessionStore: ObservableObject {
    @Published private(set) var sessions: [GameSession] = []

    private let fileURL: URL

    init() {
        let docs = FileManager.default.urls(for: .documentDirectory,
                                            in: .userDomainMask).first!
        self.fileURL = docs.appendingPathComponent("sessions.json")
        load()
    }

    func load() {
        guard let data = try? Data(contentsOf: fileURL) else {
            self.sessions = []
            return
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        do {
            self.sessions = try decoder.decode([GameSession].self, from: data)
        } catch {
            print("[SessionStore] Decode error: \(error)")
            self.sessions = []
        }
    }

    func save(_ session: GameSession) {
        sessions.insert(session, at: 0)  // most recent first
        persist()
    }

    func delete(_ session: GameSession) {
        sessions.removeAll { $0.id == session.id }
        persist()
    }

    private func persist() {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        encoder.outputFormatting = .prettyPrinted
        do {
            let data = try encoder.encode(sessions)
            try data.write(to: fileURL, options: .atomic)
        } catch {
            print("[SessionStore] Save error: \(error)")
        }
    }
}
