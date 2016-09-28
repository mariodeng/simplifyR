#library(simplifyR)
context("lapply0")

test_that("lapply0 returns vectors only", {

  l = letters[1:10]
  l = as.list(l)
  to_test = lapply0(l, function(x) x)
  expect_false(is.vector(to_test, mode = "list"))

  l = 1:10
  l = as.list(l)
  to_test = lapply0(l, function(x) x^2)
  expect_false(is.vector(to_test, mode = "list"))

})


test_that("lapply0 works correct", {

  l = letters[1:10]
  l = as.list(l)
  to_test = lapply0(l, function(x) x)
  expect_identical(to_test, unlist(lapply(l, function(x) x)))
})


test_that("lapply0 ... args works properly", {

  l = replicate(10, paste(sample(letters, 5), collapse = ""), simplify = F)
  to_test = lapply0(l, substr, 2, 3)
  expect_identical(to_test, unlist(lapply(l, substr, 2, 3)))
  expect_true(nchar(to_test[[1]]) == 2)
  expect_true(nchar(to_test[[10]]) == 2)
})
