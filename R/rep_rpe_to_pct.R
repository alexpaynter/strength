#' Create a mapping from reps and rpe to pct_1rm
#'
#' @param pct_lookup_tab A lookup table that contains columns reps, rpe and pct_1rm.
#'
#' @returns A function taking arguments reps and rpe, returning a numeric vector.
#' @export
#'
#' @examples
#' resulting_function <- create_map_rep_rpe_to_pct(pct_lookup_rts)
create_map_rep_rpe_to_pct <- function(
    pct_lookup_tab
) {
  # can't think of a way to do this without making a temp table, interestingly.
  # may need to come back to this for speed reasons.
  rep_rpe_to_pct_map <- function(reps, rpe) {
    temp_tab <- tibble::tibble(reps = reps, rpe = rpe)
    temp_tab <- dplyr::left_join(
      temp_tab,
      pct_lookup_tab,
      by = c('reps', 'rpe'),
      relationship = 'one-to-one'
    )
    rtn <- temp_tab$pct_1rm
    if (any(is.na(rtn))) {
      cli::cli_alert_warning("Returning some NA values, possibly out of table range?")
    }
    temp_tab$pct_1rm
  }

  rep_rpe_to_pct_map
}

rep_rpe_to_pct_rts <- create_map_rep_rpe_to_pct(pct_lookup_rts)
