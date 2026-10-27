# Waypoint

Monorepo for Waypoint, a friendly, ocean-themed personal organization app.

## Layout

- `ios/` — iOS app (SwiftUI). Rules in `ios/CLAUDE.md`.
- `api/` — backend: Supabase project on the free plan (migrations, Edge Functions, config). Rules in `api/CLAUDE.md`.
- `branding/` — light and dark brand guides, the source of truth for every app's UI.
- Future platforms (`android/`, `web/`) go in new top-level folders with their own `CLAUDE.md`.

## Language conventions

- Everything is written in English: code, comments, docs, commit messages, and the `CLAUDE.md` files.
- User-facing text is always localized in Spanish (source language) and English.

## Git

- `main` is protected; `develop` is the integration branch. Branch off `develop` (`feature/…`, `fix/…`, `chore/…`) and open PRs against it.
- A change spanning several projects (e.g. a migration plus the iOS code using it) goes in a single PR.

## Branding (source: `branding/` — light and dark guides)

All UI must follow these brand rules. The identity is the Waypoint whale: friendly, round and optimistic, with a thick navy outline — every element inherits that style.

### Palette (only these colors, none outside this family)

| Name | Hex | Use |
|---|---|---|
| Deep Navy | `#1E2B85` | Outlines and text |
| Ocean Blue | `#2B8CFF` | Primary color (actions, accents) |
| Whale Blue | `#45AEF5` | Whale's body, hover/secondary states |
| Splash Sky | `#8ED8F8` | Details and soft fills |
| Foam | `#F4FBFF` | Light backgrounds |

Supporting tones from the guide: `#DCEBFA` (soft borders), `#4A57A0` (secondary text), `#7B86C2` (tertiary text), `#CFE9FF` (light text on blue), `#EAF5FF` (tag fills).

Approximate usage ratio: Foam 35% · Ocean Blue 30% · Whale Blue 15% · Splash Sky 10% · Deep Navy 10%.

### Dark mode (same family, swapped roles)

| Role | Light | Dark |
|---|---|---|
| Ground | Foam `#F4FBFF` | Midnight `#0E1330` |
| Surface (cards) | White | `#161C40` |
| Surface border | `#DCEBFA` | `#262E5C` |
| Drawn outline | Deep Navy | Splash Sky |
| Primary text | Deep Navy | Near-white `#E8ECFF` |
| Secondary / tertiary text | `#4A57A0` / `#7B86C2` | `#A9B2E0` / `#8891C7` |
| Label accent | Ocean Blue | Whale Blue |
| Button hard shadow | Deep Navy | Near-black `#0A0E24` |
| Card shadow | navy 12% | black 35% |

Dark usage ratio: Midnight 40% · Deep Navy 20% · Ocean Blue 20% · Whale Blue 10% · Splash Sky 10%. Navy text is never used on dark ground; the navy logo ring becomes Splash Sky; bubbles on dark surfaces are outlined in Midnight. Secondary buttons are transparent with a Splash Sky border; tertiary keeps the Splash Sky fill with Midnight text.

### Typography

- **Headlines: Fredoka** (weights 500–700). Always navy or white. Never long all-caps runs.
- **Body: Nunito** (400 for paragraphs, 700–800 for labels and buttons). Minimum 14 pt on screen.
- Scale: H1 48/56 · H2 32/40 · Body 16/26 · Label 13 (uppercase, wide letter-spacing, Ocean Blue). Each platform adapts this scale (see its `CLAUDE.md`).

### Graphic elements & UI

- Thick navy outlines (2–3 pt) and very rounded corners on cards and controls; pill-shaped buttons and tags (full radius).
- Buttons feel "drawn": 3 pt navy border + hard navy bottom shadow (offset y ~4, no blur) that sinks when pressed.
  - Primary: Ocean Blue fill, white text. Secondary: white fill, navy text. Tertiary: Splash Sky fill, navy text.
- Cards: white fill, 2 pt `#DCEBFA` border, ~20 radius, soft `rgba(30,43,133,0.12)` shadow.
- Motifs: waves (smooth curves) and bubbles — bubbles always with a navy outline.

### Logo

- Always lives inside its blue field, cropped as a circle or rounded square, with a navy border (or Splash Sky/white on dark backgrounds).
- Clear space: at least half its diameter.
- Don't stretch, rotate or recolor the whale; don't remove the navy outline; don't place it on backgrounds that fight with its blue.

### Tone

Calm, friendly and optimistic; ocean metaphors (waves, flow, splash). E.g. "Find your flow, one wave at a time".
