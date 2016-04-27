#' @title Generates a bar graph of the winning percentage of electoral votes ordered by year.
#' @aliases allelectoralbar
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
