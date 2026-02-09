
<!-- README.md is generated from README.Rmd. Please edit that file -->

# strength

<!-- badges: start -->

<!-- badges: end -->

{strength} is a collection of computations related to strength training.
Currently this covers mapping between rating of perceived exertion
(`rpe`), repetitions performed in a set (`reps`) and percentage of one
rep max (`pct_1rm`). If you have two (for example, RPE and reps),
functions exist to compute the third (`pct_1rm` in this example).

## Installation

You can install the development version of strength from
[GitHub](https://github.com/) with:

``` r
# install.packages('remotes')
remotes::install_github("alexpaynter/strength")
```

## Basic use

The following example calculates the estimated percentage of one rep max
associated with 4 sets where reps and RPE were recorded:

``` r
library(strength)
library(tidyr)
tidyr::expand_grid(
  reps = c(3,10),
  rpe = c(8.5, 7)
) |>
  dplyr::mutate(pct_1rm = pct1rm_rts(reps = reps, rpe = rpe))
#> # A tibble: 4 × 3
#>    reps   rpe pct_1rm
#>   <dbl> <dbl>   <dbl>
#> 1     3   8.5    87.8
#> 2     3   7      83.7
#> 3    10   8.5    71.6
#> 4    10   7      69.1
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
