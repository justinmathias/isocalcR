#' @title d13C.to.D13C
#'
#' @description Calculates leaf carbon isotope discrimination from plant tissue d13C signature.
#'
#' @param d13C Measured plant tissue carbon isotope signature, per mille (‰)
#' @param year Year to which the sample corresponds
#' @param elevation Elevation (m.a.s.l.) of the sample, necessary to account for photorespiration processes
#' @param temp Leaf temperature (°C)
#' @param frac Post-photosynthetic fractionation factor, defaults to 0 assuming leaf material, user should supply reasonable value if from wood (generally -1.9 - -2.1)
#'
#' @return Carbon isotope discrimination in units of per mille (‰)
#'
#' @references
#' Badeck, F.-W., Tcherkez, G., Nogués, S., Piel, C. & Ghashghaie, J. (2005). Post-photosynthetic fractionation of stable carbon isotopes between plant organs—a widespread phenomenon. Rapid Commun. Mass Spectrom., 19, 1381–1391.
#'
#' Bernacchi, C.J., Singsaas, E.L., Pimentel, C., Portis Jr, A.R. & Long, S.P. (2001). Improved temperature response functions for models of Rubisco-limited photosynthesis. Plant, Cell Environ., 24, 253–259.
#'
#' Craig, H. (1953). The geochemistry of the stable carbon isotopes. Geochim. Cosmochim. Acta, 3, 53–92.
#'
#' Davies, J.A. & Allen, C.D. (1973). Equilibrium, Potential and Actual Evaporation from Cropped Surfaces in Southern Ontario. J. Appl. Meteorol., 12, 649–657.
#'
#' Farquhar, G., O’Leary, M. & Berry, J. (1982). On the relationship between carbon isotope discrimination and the intercellular carbon dioxide concentration in leaves. Aust. J. Plant Physiol., 9, 121–137.
#'
#' Frank, D.C., Poulter, B., Saurer, M., Esper, J., Huntingford, C., Helle, G., et al. (2015). Water-use efficiency and transpiration across European forests during the Anthropocene. Nat. Clim. Chang., 5, 579–583.
#'
#' Tsilingiris, P.T. (2008). Thermophysical and transport properties of humid air at temperature range between 0 and 100°C. Energy Convers. Manag., 49, 1098–1110.
#'
#' Ubierna, N. & Farquhar, G.D. (2014). Advances in measurements and models of photosynthetic carbon isotope discrimination in C3 plants. Plant. Cell Environ., 37, 1494–1498.
#'
#' @export
#'
#' @examples
#' d13C.to.D13C(-27, 2015, 900, 24)
#'
#'
#'
#'
d13C.to.D13C <- function(d13C, year, elevation, temp, frac = 0) {

  #Assign d13C as d13C.plant
  d13C.plant <- d13C
  #Assign d13C.atm based on year given.
  d13C.atm <- co2_data[which(co2_data$yr == year),3]
  Ca <- co2_data[which(co2_data$yr == year),2]
  a <- 4.4 #Fractionation associated with diffusion, Craig 1953.
  b <- 28 #Fractionation associated with Rubisco carboxylation, Ubierna and Farquhar 2014.
  d <- frac #1.9 for bulk wood, Badeck et al. 2005, 2.1 for a-cellulose, Frank et al. 2015.
  D13C <- ((d13C.atm - (d13C.plant - d))/(1 + ((d13C.plant - d)/1000)))

  return(D13C)
}
