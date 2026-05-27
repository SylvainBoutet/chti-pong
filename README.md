# Ch'ti Pong

Apple Watch standalone app to track table tennis sessions: swing detection, score counter, heart rate, calories, peak acceleration, session history.

By [CHTI-TECH](https://www.chti-tech.eu).

## Promo page

The landing page (FR/EN) used as Marketing / Support / Privacy URL for the App Store lives under [`docs/`](docs/) and is served via GitHub Pages at:

**https://sylvainboutet.github.io/chti-pong/**

## Tech stack

- **App** (`PingPongCoach/`): Swift 6 + SwiftUI + watchOS 26.5
- **HealthKit** for workout session + heart rate + calories
- **CoreMotion** at 50 Hz for swing detection (peak detection algorithm)
- **Swift Charts** for peak evolution graph
- **String Catalog** (`.xcstrings`) for FR/EN localization
- **JSON local persistence** (FileManager) for session history

## Architecture

```
PingPongCoach Watch App/
├── PingPongCoachApp.swift   # @main entry
├── ContentView.swift        # NavigationStack + TabView running
├── Models.swift             # Swing struct
├── SwingDetector.swift      # Peak detection algorithm
├── MotionAnalyzer.swift     # 50 Hz motion sampling
├── WorkoutManager.swift     # HKWorkoutSession lifecycle
├── ScoreTracker.swift       # Me/Opp score state
├── GameSession.swift        # Codable model
├── SessionStore.swift       # JSON persistence
├── HistoryView.swift        # List + chart
├── SessionDetailView.swift  # Session details
└── Localizable.xcstrings    # FR/EN catalog
```

## Build

Open `PingPongCoach/PingPongCoach.xcodeproj` in Xcode 26+, select an Apple Watch target, ⌘R.

Requires:
- Xcode 26 or later
- watchOS 26.5 SDK
- Apple Developer team for signing

## License

MIT — see [LICENSE](LICENSE).
