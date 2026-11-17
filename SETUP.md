# TOEIC Reading deployment

1. GitHub repository Settings > Pages > Build and deployment: Deploy from a branch, main, /(root), Save.
2. Visit https://7ca-creator.github.io/TOEIC-reading/ after deployment.
3. Create a Supabase project, run supabase.sql in SQL Editor.
4. In Supabase Authentication > Providers > Google, configure Google OAuth. Create a Google Cloud OAuth Web client and set its authorized redirect URI to the callback URL shown in Supabase Google provider. Paste client ID and client secret into Supabase.
5. In Supabase Authentication > URL Configuration set site URL and redirect allow list to https://7ca-creator.github.io/TOEIC-reading/ .
6. On website, select '設定 Google 登入' and paste Supabase Project URL and publishable/anon key (NEVER a secret/service_role key). Each browser currently needs this setup once.

Unit 04 has 46 pairs, photographed content transcribed as a draft, not yet user-confirmed. Textbook page number unknown. The app currently supports flashcards, 10-question meaning quizzes, local progress, and optional Supabase sync. Future pages need an update to the code and separate unit views; cross-page quizzes are not implemented. Simple last-write-wins syncing is not conflict-free across devices.
