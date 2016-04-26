#' @title turnoutline
#' @description Generates a line graph of the voter turnout data.
#' @details A line graph showing voter turnout from 1828-2012 is generated.
#' @example 
#' R/turnoutline.R
turnoutline <- function(){
  turnout <- read.csv("TurnoutData.csv")
  plot(turnout, type = "l", main = "Voter Turnout from 1828-2012", ylab = "Turnout (% of voting age population)")
}

