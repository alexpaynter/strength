rpe_tab_rts <- readr::read_csv(
  'data-raw/rpe_tab_rts.csv'
)

pct_lookup_rts <- rpe_tab_to_e1rm_interp(rpe_tab_rts)

usethis::use_data(pct_lookup_rts, overwrite = TRUE)
