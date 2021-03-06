#' @title Generates a bar graph of the winning percentage of popular votes ordered by year.
#' @aliases allpopularbar
#' @example 
#' R/allpopularbar.R

allpopularbar <- function(){
  require(grDevices)
  votes <- read.csv("VotesData.csv", stringsAsFactors = FALSE)
  percents <- data.frame(votes[2:3])
  plot(percents, type = "h", col = "blue", 
      main = "Popular Vote Won by Year", 
      xlab = "Year", ylab = "Percent of Votes")
}
