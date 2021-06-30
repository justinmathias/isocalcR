#' Atmospheric CO2 (ppm) and atmospheric δ13CO2 data for iWUE calculations
#'
#' @description
#' Compiled records of atmospheric CO2 concentrations and stable carbon isotopes to reconstruct climate and derive plant ecophysiological indices from tree rings. Data are from Belmecheri, Lavergne, 2020, Dendrochronologia.
#'
#' @docType data
#'
#' @usage data(co2_data)
#'
#' @format An object of class \code{"data.frame"}
#' \describe{
#' \item{yr}{Year of CO2 and δ13CO2 measurement}
#' \item{Ca}{Atmospheric CO2 concentration (ppm)}
#' \item{d13Catm}{Atmospheric δ13CO2 (‰)}}
#' }
#'
#' @keywords datasets
#'
#' @references Belmecheri, S. & Lavergne, A. (2020). Compiled records of atmospheric
#' CO2 concentrations and stable carbon isotopes to reconstruct climate and derive
#' plant ecophysiological indices from tree rings. Dendrochronologia, 63, 125748.
#'
#' @source \href{https://www.sciencedirect.com/science/article/abs/pii/S1125786520300874}
#'
#' @examples
#' data(co2_data)
#' co2_data
#' plot(co2_data$yr, co2_data$Ca)
#'
"co2_data"
