test_that("pct1rm_rts() returns the right numbers.", {
  expect_equal(pct1rm_rts(c(8, 6), c(5, 10)), c(69.1, 83.7))
})

test_that("pct1rm_rts() errors on character input.", {
  expect_error(pct1rm_rts('1', c(5, 10)))
})
