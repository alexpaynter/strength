#' Number of hard sets
#'
#' @param rpe A numeric vector of set RPE values.
#' @param cutoff RPE cutoff for what qualifies as a hard set.  The boundary is included.
#'
#' @returns A numeric value counting the number of hard sets.
#' @export
#'
#' @examples hard_sets(c(6, 7, 10, 9, NA))
hard_sets <- function(rpe, cutoff = 7) {
  sum(rpe >= cutoff, na.rm = T)
}
