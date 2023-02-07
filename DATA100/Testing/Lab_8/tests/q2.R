test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        ## Test ##
        expected_func_population_growth <- function(pop) {  # SOLUTION
          pop/48 - pop^2/6000  # SEED
        }
        testthat::expect_equal(expected_func_population_growth(5.3), func_population_growth(5.3))
        testthat::expect_equal(expected_func_population_growth(19), func_population_growth(19))
        testthat::expect_equal(expected_func_population_growth(27), func_population_growth(27))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        ## Test ##
        testthat::expect_equal(length(year_vector),123)
        testthat::expect_equal(length(pop_vector),123)
        testthat::expect_equal(year_vector[1],1900)
        testthat::expect_equal(pop_vector[1],5.3)
        testthat::expect_equal(year_vector[123],2022)
        testthat::expect_equal(pop_vector[123], 44.47, tolerance = 0.1)
        testthat::expect_equal(pop_vector[86], 25.51251, tolerance = 0.1)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        expected_plot_year_pop <- ggplot() +   
          geom_line(aes(year_vector, pop_vector)) 
        testthat::expect_true(is.ggplot(plot_year_pop))
        testthat::expect_equal(plot_year_pop$data, expected_plot_year_pop$data)
        testthat::expect_equal(as_label(plot_year_pop$layers[[1]]$mapping$x),"year_vector")
        testthat::expect_equal(as_label(plot_year_pop$layers[[1]]$mapping$y),"pop_vector")
      }
    )
  )
)