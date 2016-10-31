#library(simplifyR)
context("tail0")

test_that("tail works for DF and Matrix", {

  res = tail0(iris)
  expect_true(nrow(res) == 4)
  expect_true(ncol(res) == 4)

  m = matrix(runif(1000), nrow = 100, ncol = 10)

  res = tail0(m)
  expect_true(nrow(res) == 4)
  expect_true(ncol(res) == 4)

  res = tail0(m, 5)
  expect_true(nrow(res) == 5)
  expect_true(ncol(res) == 4)

  res = tail0(m, 5, 6)
  expect_true(nrow(res) == 5)
  expect_true(ncol(res) == 6)

  my_df = matrix(runif(36), ncol = 3)
  expect_true(nrow(head0(my_df)) == 4)
  expect_true(ncol(head0(my_df)) == 3)

  expect_true(nrow(tail0(my_df)) == 4)
  expect_true(ncol(tail0(my_df)) == 3)

})


test_that("tail works for non matrix/df objects", {

  v = 1:10
  res = tail0(v)
  expect_true(length(res) == 6)

  res = tail0(as.list(v))
  expect_true(length(res) == 6)

})
