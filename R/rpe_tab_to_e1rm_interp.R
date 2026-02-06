rpe_tab_to_e1rm_interp <- function(rpe_tab) {
  e1rm_interp <- rpe_tab |>
    dplyr::rename_all(tolower) |>
    tidyr::pivot_longer(
      cols = -rpe,
      names_to = 'reps',
      values_to = 'pct_1rm'
    ) |>
    dplyr::mutate(reps = as.numeric(reps),
                  pct_1rm = as.numeric(pct_1rm))

  e1rm_interp

}
