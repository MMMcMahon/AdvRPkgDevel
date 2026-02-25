test_that("biomass_index calculates simple ratio correctly", {
  expect_equal(biomass_index(cpue = 100, area_swept = 10), 1000)
  expect_equal(biomass_index(cpue = 50, area_swept = 2), 100)
})

test_that("biomass_index handles vectors of data", {
  cpue <- c(100, 200, 300)
  area_swept <- c(10, 10, 10)
  expected_results <- c(1000, 2000, 3000)

  expect_equal(biomass_index(cpue, area_swept), expected_results)
})

test_that("biomass_index calculates correctly", {
  expect_equal(biomass_index(cpue = 10, area_swept = 5), 50)
  expect_equal(biomass_index(cpue = 20, area_swept = 2.5), 50)
})

test_that("biomass_index handles vectors", {
  cpue_vals <- c(10, 20, 30)
  area_vals <- c(5, 5, 5)

  expect_equal(biomass_index(cpue_vals, area_vals), c(50, 100, 150))
})

test_that("biomass_index throws error on invalid input", {
  expect_snapshot(biomass_index("ten", 5), error = TRUE)
  expect_snapshot(biomass_index(10, "five"), error = TRUE)
})
