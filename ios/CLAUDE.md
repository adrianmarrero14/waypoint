# Waypoint iOS

Waypoint iOS app (SwiftUI, modular architecture with local SPM packages in `Packages/`). Repo-wide rules (language, branding, branching) live in the root `CLAUDE.md`.

## Localization

UI text is always localized in Spanish and English. Never hardcode user-facing strings: use String Catalogs (`Localizable.xcstrings`) with keys like `module.tasks.name`, source language `es`, and a translated `en` entry for every key. In views, load with `String(localized:bundle:)` / `Text(_:bundle:)` using `.module` for package resources.

## UI / Design system

All UI must be built with the `Packages/DesignSystem` package: colors `Color.wp*`, fonts `Font.fredoka(...)`/`Font.nunito(...)` and the `Font.wp*` scale, buttons `.buttonStyle(.waypointPrimary/.waypointSecondary/.waypointTertiary)`, cards `.waypointCard()`, `WaypointTag`, `WaveShape` and `Bubble`. No colors or fonts outside the system.

For backgrounds, surfaces, text and outlines always use the **semantic tokens** (`Color.wpBackground`, `.wpSurface`, `.wpSurfaceBorder`, `.wpOutline`, `.wpTextPrimary/Secondary/Tertiary`, `.wpLabelAccent`, `.wpOnSplash`, `.wpButtonShadow`, `.wpCardShadow`, `.wpWaveFill`) — they adapt to light/dark automatically. Fixed palette colors (`.wpOceanBlue`, `.wpSplashSky`, …) are for cases where the color is the same in both modes. The user's theme choice (system/light/dark) lives in `AppearanceSettings` (WaypointCore) and is applied via `preferredColorScheme` in `ContentView`.

### Typography on iOS

- Use the adapted `Font.wp*` scale (34/28/20/16/14/13) instead of the web scale from the brand guide.
- Fredoka and Nunito ship as variable TTFs in `Packages/DesignSystem` and register automatically when using `Font.fredoka(...)` / `Font.nunito(...)` (or by calling `WaypointFont.register()`).

## Backend

The app talks to the Supabase project versioned in `../api` (auth, wave sync, `delete-user` Edge Function). Schema or function changes the app depends on go in the same pull request, under `api/`.
