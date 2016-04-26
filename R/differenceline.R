#' @title differenceline
#' @description Generates a line graph of the difference between popular and electoral votes ordered by year.
#' @details A line graph showing the difference in percentage of popular and elctoral votes won by each president for each election year from 1828-2012 is generated.
#' @example 
#' R/differenceline.R

differenceline <- function(){
  require(grDevices)
  votes <- read.csv("VotesData.csv", stringsAsFactors = FALSE)
  percents <- data.frame(votes[2], votes[5])
  plot(percents, type = "l", col = "blue", 
       main = "Difference Between Popular and Electoral Vote Won by Year", 
       xlab = "Year", ylab = "Difference in Percent of Votes")
}