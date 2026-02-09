#' RPE table RTS
#'
#' @format ## `rpe_tab_rts`
#' A dataframe with 11 rows and 16 columns.
#' \describe{
#'  \item{RPE}{The rating of perceived exertion}
#'  \item{1}{Estimated percentage of one rep max doing 1 rep at the RPE given by RPE.}
#'  \item{2}{Estimated percentage of one rep max doing 2 reps at the RPE given by RPE.}'
#'  \item{...}{And so on...}
#' }
#' @source {Pulled from the TRAC system on Reactive Training Systems in Dec 2025}
"rpe_tab_rts"



#' Percentage lookup from reactive training systems (RTS)
#'
#' @format ## `pct_lookup_rts`
#' A data frame with 165 rows and 5 columns:
#' \describe{
#'  \item{reps}{Number of reps performed}
#'  \item{rpe}{Rating of perceived exertion}
#'  \item{next_rpe_down}{Next rating of perceived exertion in the table provided}
#'  \item{pct_1rm}{Percentage of one-repetition maximum associated with `reps` at `rpe`.}
#'  \item{next_pct_1rm_down}{Percentage of one-repetition maximum associated with `reps` at `next_rpe_down`.}
#' }
#' @source {Derived from `rpe_tab_rts`.}
"pct_lookup_rts"


