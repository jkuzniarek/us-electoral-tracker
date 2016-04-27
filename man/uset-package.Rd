\name{uset}
\alias{uset}
\docType{package}
\title{
\packageTitle{uset}
}
\description{
\packageDescription{uset}
}
\details{


\describe{
\item{turnoutline}{View line/bar graph of voter turnout by year}
\item{electoralbar}{View bar graph of winning percentage of electoral votes per election}
\item{popularbar}{View bar graph of winning percentage of popular votes per election}
\item{allelectoralbar}{View bar graph of presidents and their percentage of electoral votes ordered by year}
\item{allpopularbar}{View bar graph of presidents and their percentage of popular votes ordered by year}
\item{differenceline}{View line graph of the total difference between popular votes and electoral votes by year}
}

}
\author{
\packageAuthor{uset}

Maintainer: \packageMaintainer{uset}
}
\references{
\url{http://www.presidency.ucsb.edu/data/turnout.php} 
\url{http://www.presidency.ucsb.edu/data/mandates.php}
}
~~ Optionally other standard keywords, one per line, from file ~~
~~ KEYWORDS in the R documentation directory ~~
\keyword{ package }

\examples{
turnoutline()
electoralbar(2012)
popularbar(2012)
}
