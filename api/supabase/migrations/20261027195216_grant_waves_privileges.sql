-- The hosted project does not grant table privileges to the API roles by
-- default (the local stack does), so RLS policies alone were not enough:
-- every request from the app failed with "permission denied for table waves".
-- Reset privileges explicitly so local and remote end up identical:
-- signed-in users get CRUD (rows are still scoped by the RLS policies),
-- anon gets nothing.
revoke all on public.waves from anon, authenticated, service_role;
grant select, insert, update, delete on public.waves to authenticated, service_role;
