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

  e1rm_interp <- e1rm_interp |>
    dplyr::arrange(reps, desc(rpe)) |>
    dplyr::group_by(reps) |>
    dplyr::mutate(
      next_rpe_down = dplyr::lead(rpe),
      next_pct_1rm_down = dplyr::lead(pct_1rm)
    ) |>
    dplyr::select(reps, rpe, next_rpe_down, pct_1rm, next_pct_1rm_down) |>
    dplyr::ungroup()

  e1rm_interp

}
