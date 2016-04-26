#' @title popularbar
#' @param year An integer
#' @description Generates a bar graph of the winning percentage of popular votes for the given election year.
#' @details A bar graph showing the percentage of popular votes won for the given election year is generated.
#' @example 
#' R/popularbar.R

popularbar <- function(year){
  require(grDevices)
  votes <- read.csv("VotesData.csv", stringsAsFactors = FALSE)
  done <- FALSE
  i <- 1
  line <- NULL
  percent <- NULL
  president <- NULL
  while (done == FALSE){
    if (votes[i, 2] == year){
      line <- i
      done <- TRUE
    } else {
      i <- i + 1
    }
    if (i >= 48){
      done <- TRUE
    }
  }
  if (is.null(line)){
    print("Election data was not found for that year.")
  } else {
    president <- c(votes[line, 1])
    percent <- votes[line, 3]
    heights <- c(100, percent, (100 - percent))
    
    barplot(heights, names.arg = c("Total", president, "Other"),
            horiz = FALSE, col = c("white", "blue", "red"), 
            border = "black", main = ("Popular Vote Distribution"), 
            sub = (year), ylab = "Percent of Votes", 
            axes = TRUE, axisnames = TRUE, cex.names = 0.70)
  }
}