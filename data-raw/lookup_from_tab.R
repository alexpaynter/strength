rpe_tab_rts <- readr::read_csv(
  'data-raw/rpe_tab_rts.csv'
)
pct_lookup_rts <- strength::rpe_tab_to_lookup(rpe_tab_rts)
usethis::use_data(rpe_tab_rts, overwrite = TRUE)
usethis::use_data(pct_lookup_rts, overwrite = TRUE)

rpe_tab_helms <- readr::read_csv(
  'data-raw/rpe_tab_helms.csv'
)
pct_lookup_helms <- strength::rpe_tab_to_lookup(rpe_tab_helms)
usethis::use_data(rpe_tab_helms, overwrite = TRUE)
usethis::use_data(pct_lookup_helms, overwrite = TRUE)

rpe_tab_brzycki <- readr::read_csv(
  'data-raw/rpe_tab_brzycki.csv'
)
pct_lookup_brzycki <- strength::rpe_tab_to_lookup(rpe_tab_brzycki)
usethis::use_data(rpe_tab_brzycki, overwrite = TRUE)
usethis::use_data(pct_lookup_brzycki, overwrite = TRUE)
