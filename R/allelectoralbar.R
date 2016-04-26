#' @title allelectoralbar
#' @description Generates a bar graph of the winning percentage of electoral votes ordered by year.
#' @details A bar graph showing the percentage of electoral votes won by each president for each election year from 1828-2012 is generated.
#' @example 
#' R/allelectoralbar.R

allelectoralbar <- function(){
  require(grDevices)
  votes <- read.csv("VotesData.csv", stringsAsFactors = FALSE)
  percents <- data.frame(votes[2], votes[4])
  plot(percents, type = "h", col = "blue", 
       main = "Electoral Vote Won by Year", 
       xlab = "Year", ylab = "Percent of Votes")
}