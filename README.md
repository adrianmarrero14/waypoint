# Waypoint

Waypoint is a friendly, ocean-themed personal organization app. Find your flow, one wave at a time. 🐋

This is the Waypoint monorepo: every app and the backend live here, side by side.

## Repository layout

```
waypoint
├── ios/          # iOS app (SwiftUI + SwiftData, local SPM packages)
├── api/          # Backend: Supabase project (database migrations, Edge Functions, config)
├── branding/     # Brand guides (light and dark) shared by every app
└── .github/      # Issue and pull request templates
```

Future platforms (`android/`, `web/`) will be added as new top-level folders.

| Project | Stack | Docs |
|---|---|---|
| iOS | SwiftUI, SwiftData, Swift Package Manager | [ios/README.md](ios/README.md) |
| API | Supabase (Postgres, Auth, Edge Functions) | [api/README.md](api/README.md) |

## Features

- **Journal** — year and month views with quick wave creation.
- **Tasks & Habits** — modular features to keep track of your day.
- **Reminders** — local notification reminders.
- **Accounts & sync** — Supabase auth with offline-first sync of waves.
- **Dark mode** — full light/dark support with adaptive brand tokens.
- **Localized** — Spanish and English out of the box.

## Getting started

```sh
git clone git@github.com:adrianmarrero14/waypoint.git
```

Then follow the README of the project you want to work on.

## Branching model

- `main` — stable, protected branch. Changes land via pull request.
- `develop` — integration branch for day-to-day work.

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## License

This project is licensed under the [MIT License](LICENSE).
