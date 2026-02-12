test_that("hard_sets() basic function", {
  expect_equal(hard_sets(c(5, 7, 10, 9, NA)), 3)
})

test_that("hard_sets() different cutoff value", {
  expect_equal(hard_sets(c(5, 7, 10, 9, 8, NA), cutoff = 9), 2)
})
