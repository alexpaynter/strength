create_rep_rpe_to_pct <- function(
    pct_lookup_tab
) {
  rtn <- function(reps, rpe) {
    temp_tib <- tibble::tibble(reps = reps, rpe = rpe)
    dplyr::join_by()
    cli_abort("stopped here")
  }
}
