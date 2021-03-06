#' @title Generates a bar graph of the winning percentage of electoral votes for the given election year.
#' @param year An integer
#' @aliases electoralbar
#' @examples 
#' R/electoralbar.R

electoralbar <- function(year){
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
    percent <- votes[line, 4]
    heights <- c(100, percent, (100 - percent))
    
    barplot(heights, names.arg = c("Total", president, "Other"),
            horiz = FALSE, col = c("white", "blue", "red"), 
            border = "black", main = ("Electoral Vote Distribution"), 
            sub = (year), ylab = "Percent of Votes", 
            axes = TRUE, axisnames = TRUE, cex.names = 0.70)
  }
}
