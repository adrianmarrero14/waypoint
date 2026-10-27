# Waypoint API

Backend for Waypoint: a Supabase project (ref `kacjuwrmevghlxgyqyco`) on the **free plan**, managed with the Supabase CLI from this folder. Repo-wide rules live in the root `CLAUDE.md`.

## Rules

- This folder is the source of truth for the backend. Every schema change is a migration in `supabase/migrations/` (`supabase migration new <name>`); never leave changes made only in the dashboard or via MCP — if one happens, capture it with `supabase db pull`.
- Never edit a migration that has already been applied to the remote project; add a new one instead.
- Every table in `public` has Row Level Security enabled, with policies that scope rows to `auth.uid()`.
- Edge Functions live in `supabase/functions/<name>/` (Deno + TypeScript). Secrets go in Supabase secrets (`supabase secrets set`), never in the repo.
- Changes the iOS app depends on (columns, functions) must stay backwards compatible with the app version in the store, or ship together with the app change.

## Free plan constraints

- Stay within free plan limits (500 MB database, 1 GB storage, 500k Edge Function invocations/month). Don't introduce features that require a paid plan (branching, PITR, custom domains, image transformations).
- The project pauses after 1 week of inactivity and has no automatic backups: the migrations in this folder must always be enough to recreate the schema.
