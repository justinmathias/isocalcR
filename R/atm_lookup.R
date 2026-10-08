# Vectorized, order-preserving lookup of Ca and d13C.atm by year.
.atm_lookup <- function(year) {
  i <- match(year, CO2data$yr)
  if (anyNA(i)) {
    stop("year outside CO2data coverage (", min(CO2data$yr), "-", max(CO2data$yr),
         " C.E.) or not a whole year; supply Ca and d13C.atm via custom.calc().", call. = FALSE)
  }
  list(Ca = CO2data$Ca[i], d13C.atm = CO2data$d13C.atm[i])
}
