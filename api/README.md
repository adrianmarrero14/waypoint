# Waypoint API

The Waypoint backend is a [Supabase](https://supabase.com) project on the **free plan**. This folder versions everything that defines it, so the backend can be reviewed in pull requests and recreated from scratch.

```
api
└── supabase/
    ├── config.toml      # Local stack and project configuration
    ├── migrations/      # Database schema (tables, RLS policies, functions), applied in order
    └── functions/       # Edge Functions (Deno + TypeScript)
        └── delete-user/ # Deletes the signed-in user's account and data
```

## What Supabase provides

- **Postgres** database with Row Level Security (RLS) policies scoping every row to its owner.
- **Auth** (email; Apple and Google are prepared in the iOS app behind flags).
- **Auto-generated REST API** (PostgREST) used by the iOS app for wave sync.
- **Edge Functions** for logic that is not plain CRUD.

## Requirements

- [Supabase CLI](https://supabase.com/docs/guides/local-development/cli/getting-started): `brew install supabase/tap/supabase`
- Docker (only for the local stack and `db pull`/`db diff`)

## Getting started

All commands run from `api/`:

```sh
supabase login
supabase link --project-ref kacjuwrmevghlxgyqyco
```

### Database changes

```sh
supabase migration new <name>   # create an empty migration and write the SQL
supabase start                  # optional: run the stack locally (Docker)
supabase db reset               # optional: re-apply all migrations locally
supabase db push                # apply pending migrations to the remote project
```

If a change was made in the dashboard, capture it with `supabase db pull` so the schema stays versioned here.

### Edge Functions

```sh
supabase functions serve                 # run functions locally
supabase functions deploy <name>         # deploy one function
```

## Free plan notes

- The project is **paused after 1 week of inactivity**. Restore it from the dashboard; no data is lost.
- There are **no automatic backups**. The schema is versioned in `migrations/`; take data backups with `supabase db dump --data-only` when needed.
