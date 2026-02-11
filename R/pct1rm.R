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
    stopifnot(is.numeric(reps), is.numeric(rpe))
    temp_tab <- tibble::tibble(reps = reps, rpe = rpe)
    temp_tab <- dplyr::left_join(
      temp_tab,
      pct_lookup_tab,
      by = c('reps', 'rpe'),
      relationship = 'one-to-one'
    )
    rtn <- temp_tab$pct_1rm
    if (any(is.na(rtn))) {
      cli::cli_alert_warning(
        "Returning some NA values, possibly out of table range?"
      )
    }
    temp_tab$pct_1rm
  }

  rep_rpe_to_pct_map
}

#' Mapping from reps and rpe to pct_1rm using Reactive Training System's table.
#'
#' @param reps A vector of repetitions performed in a set.
#' @param rpe A vector of ratings of perceived exertion.
#'
#' @details `reps` must be length 1 or the same length as `rpe`.  RPE must be length 1 or the same length as `reps`.
#'
#' @returns A numeric vector listing the percentage of one 1 rep max.
#' @export
#'
#' @examples
#' resulting_function <- create_map_rep_rpe_to_pct(pct_lookup_rts)
pct1rm_rts <- create_map_rep_rpe_to_pct(pct_lookup_rts)

pct1rm_helms <- create_map_rep_rpe_to_pct(pct_lookup_helms)
