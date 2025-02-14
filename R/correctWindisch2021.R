#' @title correctWindisch2021
#' @description correct data to calculate BphEffect, BphTCRE or BphMask depending on the chosen subtype.
#'              BphEffect: Biogeophysical temperature change of afforestation (degree C).
#'              (File is based on observation datasets of Bright et al. 2017 and Duveiller et al. 2018).
#'              BphMask: Mask of Datapoints of biogeophysical temperature change of afforestation (degree C)
#'              to be used as weight.
#'              (File is based on observation datasets of Bright et al. 2017 and Duveiller et al. 2018).
#'              BphTCRE: Transient Climate Response to accumulated doubling of CO2.
#'              (File is based on CMIP5 +1perc CO2 per year experiment.
#'              To be used in the translation to carbon equivalents of BphEffect)
#' @return List of magpie objects with results on cellular level, weight, unit and description.
#' @param x magpie object provided by the read function
#' @author Felicitas Beier, Michael Windisch
#' @seealso
#'   \code{\link{readWindisch2021}}
#' @examples
#'
#' \dontrun{
#'   readSource("Windisch2021", convert="onlycorrect")
#' }
#'

correctWindisch2021 <- function(x) {

  x <- toolConditionalReplace(x, conditions = c("is.na()"), replaceby = 0)
  x <- toolCoord2Isocell(x)

  return(x)
}
