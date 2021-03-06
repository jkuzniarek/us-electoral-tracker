% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differenceline.R
\name{differenceline}
\alias{differenceline}
\title{Generates a line graph of the difference between popular and electoral votes ordered by year.}
\usage{
differenceline()
}
\examples{
#' @title Generates a line graph of the difference between popular and electoral votes ordered by year.
#' @aliases differenceline
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
}

