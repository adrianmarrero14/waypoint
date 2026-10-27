# Contributing to Waypoint

Thanks for your interest in contributing! This document describes the conventions used in this monorepo, which holds the iOS app (`ios/`), the backend (`api/`) and the brand guides (`branding/`).

## Branching model

- `main` is the stable branch and is protected: changes land only through pull requests.
- `develop` is the integration branch. Branch off `develop` for new work:
  - `feature/<short-description>` for features
  - `fix/<short-description>` for bug fixes
  - `chore/<short-description>` for tooling and maintenance

Open pull requests against `develop`; `develop` is merged into `main` for releases. A change that spans several projects (e.g. a migration in `api/` and the iOS code that uses it) goes in a single pull request.

## Conventions

- **Language**: everything is written in English — code, comments, docs, and commit messages.
- **Localization**: UI text is always localized in Spanish and English. Never hardcode user-facing strings; use String Catalogs (`Localizable.xcstrings`) with source language `es` and an `en` translation for every key.
- **Branding**: every app follows the guides in `branding/`.
- **iOS design system**: all iOS UI must be built with the `ios/Packages/DesignSystem` package (semantic color tokens, `Font.fredoka`/`Font.nunito`, Waypoint button styles, cards, tags). No colors or fonts outside the system.
- **Backend**: every schema change is a migration in `api/supabase/migrations/`; see [api/README.md](api/README.md).
- **Commits**: use concise, imperative messages with a conventional prefix, e.g. `feat: add habit streaks`, `fix: correct journal month layout`, `refactor: extract entry row view`.

## Pull requests

1. Make sure the affected projects build and their tests pass (Xcode for `ios/`, `supabase db reset` for migrations in `api/`).
2. Keep PRs focused — one topic per pull request.
3. Describe what changed and why, and add screenshots for UI changes (light and dark mode).
