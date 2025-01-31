% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcFoodDemandGridded.R
\name{calcFoodDemandGridded}
\alias{calcFoodDemandGridded}
\title{calcFoodDemandGridded}
\usage{
calcFoodDemandGridded(attribute = "dm")
}
\arguments{
\item{attribute}{dm or calories ("ge") or other massbalance attribute}
}
\value{
Gridded magpie object of food demand disaggregated by rural urban pop
}
\description{
Calculates grid-level food demand
}
\examples{
\dontrun{
calcOutput("FoodDemandGridded")
}

}
\author{
David M Chen
}
