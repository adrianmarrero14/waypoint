# Waypoint iOS

The Waypoint iOS app.

## Architecture

The app is built with **SwiftUI** and **SwiftData**, following a modular architecture based on local Swift Package Manager packages:

```
ios
├── waypoint/               # App target (entry point, module registry, settings, app lock, notifications)
├── waypoint.xcodeproj
└── Packages/
    ├── DesignSystem/       # Brand colors, typography (Fredoka & Nunito), buttons, cards, motifs
    ├── WaypointCore/       # Shared models (Wave, WaveStore), routing, app-wide settings
    ├── WaypointFeature/    # Journal (year/month views, quick add)
    ├── AuthFeature/        # Supabase auth, account management and wave sync
    ├── TasksFeature/       # Tasks module
    └── HabitsFeature/      # Habits module
```

Key conventions:

- All UI is built exclusively with the `DesignSystem` package (semantic color tokens, `Font.wp*` scale, Waypoint button styles and cards).
- User-facing strings live in String Catalogs (`Localizable.xcstrings`) with Spanish as the source language and English translations for every key.
- Features are self-contained packages registered in the app's `ModuleRegistry`.

The backend the app talks to lives in [`../api`](../api/README.md).

## Requirements

- Xcode 16 or later
- iOS 18 or later

## Getting started

1. Open `ios/waypoint.xcodeproj` in Xcode.
2. Select the `waypoint` scheme and run. Local packages resolve automatically.
