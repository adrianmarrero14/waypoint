create table public.waves (
  id uuid primary key,
  user_id uuid not null references auth.users (id) on delete cascade,
  text text not null,
  date timestamptz not null,
  created_at timestamptz not null,
  updated_at timestamptz not null,
  deleted_at timestamptz
);

alter table public.waves enable row level security;

create policy "waves_select_own" on public.waves
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "waves_insert_own" on public.waves
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "waves_update_own" on public.waves
  for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "waves_delete_own" on public.waves
  for delete to authenticated using ((select auth.uid()) = user_id);

create index waves_user_updated_idx on public.waves (user_id, updated_at);;
