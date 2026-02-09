test_that("rep_rpe_to_pct_rts() returns the right numbers.", {
  expect_equal(rep_rpe_to_pct_rts(c(8, 6), c(5, 10)), c(69.1, 83.7))
})

test_that("rep_rpe_to_pct_rts() errors on character input.", {
  expect_error(rep_rpe_to_pct_rts('1', c(5, 10)))
})


test_that('create_map_rep_rpe_to_pct() returns a function', {
  expect_true(is.function(create_map_rep_rpe_to_pct(pct_lookup_rts)))
})
