test_that("rep_rpe_to_pct_rts() returns the right numbers.", {
  expect_equal(rep_rpe_to_pct_rts(c(8, 6), c(5, 10)), c(69.1, 83.7))
})

test_that("rep_rpe_to_pct_rts() errors on character input.", {
  expect_error(rep_rpe_to_pct_rts('1', c(5, 10)))
})
