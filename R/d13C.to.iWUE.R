#' @title d13C.to.iWUE
#'
#' @description Calculates intrinsic water use efficiency from plant tissue d13C signature.
#'
#' @param d13C Measured tissue carbon isotope signature, per mille (‰)
#' @param year Year to which the sample corresponds
#' @param elevation Elevation (m.a.s.l.) of the sample, necessary to account for photorespiration processes
#' @param temp Leaf temperature (°C)
#' @param frac Post-photosynthetic fractionation factor, defaults to 0 assuming leaf material, between -19. - -2.1 if wood
#'
#' @return Intrinsic water use efficiency in units of micromol CO2 per mol H2O
#'
#' @export
#'
#' @examples \dontrun{
#' d13C.to.iWUE(-27, 2018, "leaf")
#' }
#'
#'
#'
d13C.to.iWUE <- function(d13C, year, elevation, temp, frac = 0) {

  #Assign d13C.atm based on year given.
  d13C.atm <- co2_data[which(co2_data$yr == year),3]
  Ca <- co2_data[which(co2_data$yr == year),2]
  a <- 4.4 #Fractionation associated with diffusion, Craig 1953.
  b <- 28 #Fractionation associated with Rubisco carboxylation, Ubierna and Farquhar 2014.
  d <- frac #1.9 for bulk wood, Badeck et al. 2005, 2.1 for a-cellulose, Frank et al. 2015.
  D13C <- ((d13C.atm - (d13C.plant - d))/(1 + ((d13C.plant - d)/1000)))

  f <- 12 #Fractionation associated with photorespiration, Ubierna and Farquhar 2014.
  #Calculate atmospheric pressure (Pa), given elevation.
  P0 <- 101325
  Base.temp <- 298.15    #Base temperature, units (K)
  ALR  <- 0.0065    #Adiabiatic lapse rate, units (K/m), Allen 1973
  Grav  <- 9.80665   #Gravitational acceleration, units (m/s^2), Allen 1973
  R  <- 8.3145    #Universal gas constant, units (J/mol/K) ,Allen 1973
  MWair <- 0.028963  #Molecular weight of dry air, units (kg/mol),Tsilingiris 2008
  Patm <- P0*(1.0 - ALR*elevation/Base.temp)^(Grav*MWair/(R*ALR)) #Finally, convert elevation to pressure, Pa.
  deltaHa <- 37830 #Activation energy for Gammastar (J/mol), Bernacchi et al. 2001.
  Temp.C <- leaftemp
  Gammastar25 <- 4.332 #Pa, value based on Bernacchi et al. (2001), converted to Pa by T. Davis assuming elevation of 227.076 m.a.s.l. From Beni Stocker's RPmodel.
  Gammastar <- Gammastar25*(Patm/P0)*exp(1)^((deltaHa*(Temp.C-298))/(R*Temp.C*298)) #CO2 compensation point in the absence of mitochondrial respiration, units (Pa)

  pCa <- (1.0e-6)*Ca*Patm #Need to convert atm CO2 (ppm) to atm CO2 (Pa)
  Ci <- ((D13C-a+f*(Gammastar/pCa))/(b-a))*Ca
  iWUE <- (Ca - Ci)*0.625
  iWUE
}
