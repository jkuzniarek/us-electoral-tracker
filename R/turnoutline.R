#' @title Generates a line graph of the voter turnout data.
#' @aliases turnoutline
#' @example 
#' R/turnoutline.R
turnoutline <- function(){
  require(grDevices)
  turnout <- read.csv("TurnoutData.csv")
  plot(turnout, type = "l", main = "Voter Turnout from 1828-2012", 
       ylab = "Turnout (% of voting age population)", col = "blue")
}
