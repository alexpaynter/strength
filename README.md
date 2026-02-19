
<!-- README.md is generated from README.Rmd. Please edit that file -->

# strength

<!-- badges: start -->

<!-- badges: end -->

{strength} is a collection of computations commonly needed in exercise
science to plan and quantify strength training. Currently this covers
mapping between rating of perceived exertion (`rpe`), repetitions
performed in a set (`reps`) and percentage of one rep max (`pct_1rm`).
There is also a convenience function `hard_sets()`.

## Installation

You can install the CRAN version of strength with:

``` r
install.packages("strength")
```

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
dat <- tidyr::expand_grid(
  reps = c(3,10),
  rpe = c(8.5, 7)
) |>
  dplyr::mutate(pct_1rm = pct1rm_rts(reps = reps, rpe = rpe))
dat
#> # A tibble: 4 × 3
#>    reps   rpe pct_1rm
#>   <dbl> <dbl>   <dbl>
#> 1     3   8.5    87.8
#> 2     3   7      83.7
#> 3    10   8.5    71.6
#> 4    10   7      69.1
```

Computing the number of hard sets using a cutoff of 8 for RPE is an easy
addon:

``` r
library(strength)
library(tidyr)
dat %>%
  dplyr::summarize(hard_sets(rpe = rpe, cutoff = 8))
#> # A tibble: 1 × 1
#>   `hard_sets(rpe = rpe, cutoff = 8)`
#>                                <int>
#> 1                                  2
```
