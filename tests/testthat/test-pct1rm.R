test_that("pct1rm_rts() returns the right numbers.", {
  expect_equal(pct1rm_rts(c(8, 6), c(5, 10)), c(69.1, 83.7))
})

test_that("pct1rm_rts() errors on character input.", {
  expect_error(pct1rm_rts('1', c(5, 10)))
})

test_that("pct1rm_helms() returns the right numbers.", {
  expect_equal(pct1rm_helms(c(8, 6), c(7, 10)), c(70, 83))
})

test_that("pct1rm_helms() errors on character input.", {
  expect_error(pct1rm_helms('1', c(6, 10)))
})
