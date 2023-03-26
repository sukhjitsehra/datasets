test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        ## Test ##
        expected_type_of_name <- typeof(olympic_games$Name)
        expected_size_of_name <- object.size(olympic_games$Name)
        testthat::expect_equal(expected_type_of_name, type_of_name)
        testthat::expect_equal(expected_size_of_name, size_of_name)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        ## Test ##
        expected_olympic_games<-read_csv("https://raw.githubusercontent.com/sukhjitsehra/datasets/master/DATA100/Datasets/Olympics.csv")
        expected_is_age_integer <- is_integer(expected_olympic_games$Age)
        expected_sum_of_age_variable <- sum(olympic_games$Age, na.rm = TRUE)  
        testthat::expect_equal(expected_is_age_integer, is_age_integer)
        testthat::expect_equal(expected_sum_of_age_variable, sum_of_age_variable)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        ## Test ##
        expected_olympic_games_1 <- list(name_list = list(olympic_games$Name), age_list = list(olympic_games$Age), team_sport_list = list(list(olympic_games$Team),list(olympic_games$Sport))) # SOLUTION
        expected_thirty_th_element <- olympic_games_1[["age_list"]][[1]][30]
        testthat::expect_equal(expected_olympic_games_1, olympic_games_1)
        testthat::expect_equal(expected_thirty_th_element, thirty_th_element)
      }
    )
  )
)