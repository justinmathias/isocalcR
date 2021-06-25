#' @title d13C.to.iWUE
#'
#' @description Calculates intrinsic water use efficiency from plant tissue d13C signature.
#'
#' @param d13C Measured tissue carbon isotope signature, per mille (‰)
#' @param year Year to which the sample corresponds
#' @param type Wood or leaf tissue, relevant for calculations on whether to account for post-photosynthetic fractionation processes
#'
#' @return Intrinsic water use efficiency in units of micromol CO2 per mol H2O
#'
#' @example
#' d13C.to.iWUE(-27, 2018, "leaf")
#'
#' @export
#'
#'
