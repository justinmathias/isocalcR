context("test-check_output")
library(testthat)
library(isocalcR)

#Test whether the output is numeric
test_that("d13C.to.iWUE() returns a numeric value", {
  iwue <- d13C.to.iWUE(-26, 2015, 300, 26)
  expect_type(iwue, "double")
})






