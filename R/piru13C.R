#' @title piru13C
#'
#' @description Accompanying tree ring carbon isotope signature data for red spruce (Picea rubens) trees from three sites in the Central Appalachian Mountains, West Virginia, USA.
#'
#' @docType data
#'
#' @usage data(piru13C)
#'
#' @format A data frame with 1520 rows and 6 variables:
#' \describe{
#'   \item{Site}{Study location name}
#'   \item{Species}{Tree species latin binomial abbreviation}
#'   \item{TreeID}{Individual tree ID}
#'   \item{Year}{Year of sample}
#'   \item{wood.d13C}{Measured tree ring (i.e. wood) d13C, in per mille, ‰}
#'   \item{percentC}{Measured tree ring (i.e. wood) percent carbon}
#' }
#'
#' @keywords datasets
#'
#' @references Mathias, J.M. & Thomas, R.B. Disentangling the effects of acidic air pollution, atmospheric CO2, and climate change
#' on recent growth of red spruce trees in the Central Appalachian Mountains. Glob. Chang. Biol. 24, 3938–3953 (2018).
#'
#' @source https://onlinelibrary.wiley.com/doi/full/10.1111/gcb.14273
#'
#' @examples
#'
#' data(piru13C)
#' head(piru13C)
#'
"piru13C"
