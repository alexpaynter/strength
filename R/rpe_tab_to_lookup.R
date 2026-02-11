#' RPE table to lookup table
#'
#' @param rpe_tab A tibble with columns RPE, 1, 2, 3, ... containing the percentage of one rep max associated with doing x reps at RPE rating of perceived exertion.
#'
#' @returns A tibble with columns rpe, reps, pct_1rm.
#' @export
#'
#' @examples rpe_tab_to_lookup(rpe_tab_rts)
rpe_tab_to_lookup <- function(rpe_tab) {
  e1rm_interp <- rpe_tab |>
    dplyr::rename_all(tolower) |>
    tidyr::pivot_longer(
      cols = -rpe,
      names_to = 'reps',
      values_to = 'pct_1rm'
    ) |>
    dplyr::mutate(reps = as.numeric(reps), pct_1rm = as.numeric(pct_1rm))

  e1rm_interp
}
