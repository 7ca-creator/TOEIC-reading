create table if not exists public.study_progress (user_id uuid not null references auth.users(id) on delete cascade,unit_id text not null,payload jsonb not null default '{}'::jsonb,updated_at timestamptz not null default now(),primary key(user_id,unit_id));
alter table public.study_progress enable row level security;
create policy "read own" on public.study_progress for select to authenticated using ((select auth.uid())=user_id);
create policy "insert own" on public.study_progress for insert to authenticated with check ((select auth.uid())=user_id);
create policy "update own" on public.study_progress for update to authenticated using ((select auth.uid())=user_id) with check ((select auth.uid())=user_id);
