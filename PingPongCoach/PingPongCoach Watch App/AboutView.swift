import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 6) {
                Image(systemName: "figure.table.tennis")
                    .font(.system(size: 36))
                    .foregroundStyle(.green)
                    .padding(.top, 4)

                Text("Ch'ti Pong")
                    .font(.headline)

                Text(versionString)
                    .font(.caption2)
                    .foregroundStyle(.secondary)

                Divider().padding(.vertical, 4)

                Text("by CHTI-TECH")
                    .font(.caption)

                Text("Valenciennes, France")
                    .font(.caption2)
                    .foregroundStyle(.secondary)

                if let url = URL(string: "https://chti-tech.eu") {
                    Link(destination: url) {
                        Label("chti-tech.eu", systemImage: "safari")
                            .font(.caption2)
                    }
                    .foregroundStyle(.green)
                    .padding(.top, 2)
                }

                Text("© 2026 CHTI-TECH")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
                    .padding(.top, 6)
            }
            .multilineTextAlignment(.center)
            .padding(.horizontal, 4)
        }
        .navigationTitle("About")
    }

    private var versionString: String {
        let info = Bundle.main.infoDictionary
        let version = info?["CFBundleShortVersionString"] as? String ?? "?"
        let build = info?["CFBundleVersion"] as? String ?? "?"
        return String(format: NSLocalizedString("Version %@ (%@)", comment: ""), version, build)
    }
}

#Preview {
    NavigationStack {
        AboutView()
    }
}
