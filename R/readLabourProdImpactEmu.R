#' @title readLabourProdImpactEmu
#' @description read in labour productivity impacts from climate change emulated by the LAMACLIMA project
#' @description based on method of Orlov et al. 2019. Economics of Disasters and Climate Change, 3(3), 191-211.
#' @return magpie object of gridded productivity loss in percent (0-100)
#' @author Michael Windisch, Florian Humpenöder
#' @seealso \code{\link{readSource}}
#' @importFrom magclass new.magpie read.magpie mbind
#' @importFrom mrcommons toolCoord2Isocell

readLabourProdImpactEmu <- function() {

  x <- NULL

  for (exp in (c("CTL_rcp585", "CTL_rcp119", "FRST", "CROP", "HARV", "IRR"))) {
    for (int in c("300", "400")) {
      for (sta in c("ensmean", "ensstd")) {
         for (fct in c("ISO", "HOTHAPS")) {
           inter <- read.magpie(paste0(exp, "/", exp, "_", sta, "_laborprod_wby_grdays_", fct, "_", int, "_0.5.nc"))
           inter <- toolCoord2Isocell(inter, fillMissing = 0)
           getYears(inter) <- seq(from = 1995, to = 2095, by = 1)
           getNames(inter) <- paste0(exp, ".", fct, ".", int, "W", ".", sta)
           x <- mbind(x, inter)
         }
      }
    }
  }

  return(x)

}
