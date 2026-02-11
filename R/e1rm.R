#' Estimated one rep max
#'
#' @param weight Numeric vector of weights, one entry per set.
#' @param reps Numeric vector of reps, one entry per set.
#' @param rpe Numeric vector of RPEs, one entry per set.
#' @param pct1rm_func A function which takes `reps`,`rpe` and returns an estimated percentage of one rep max.
#'
#' @returns A numeric vector of estimated one rep max values for each set.
#' @export
#'
#' @examples e1rm(c(400, 300), c(1, 10), c(9, 6), pct1rm_rts)
e1rm <- function(weight, reps, rpe, pct1rm_func) {
  p1rm <- pct1rm_func(reps, rpe)
  weight / (p1rm / 100)
}

#' @rdname e1rm
#' @param ... Arguments passed to `e1rm()`.
#' @export
e1rm_rts <- function(...) {
  dots <- list(...)
  e1rm(..., pct1rm_rts)
}
#' @rdname e1rm
#' @param ... Arguments passed to `e1rm()`.
#' @export
e1rm_helms <- function(...) {
  dots <- list(...)
  e1rm(..., pct1rm_helms)
}
