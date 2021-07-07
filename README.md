
<!-- README.md is generated from README.Rmd. Please edit that file -->

# isocalcR

<!-- badges: start -->

# [![R-CMD-check](https://github.com/justinmathias/isocalcR/workflows/R-CMD-check/badge.svg)](https://github.com/justinmathias/isocalcR/actions) [![codecov](https://codecov.io/gh/justinmathias/isocalcR/branch/main/graph/badge.svg?token=W72B141APE)](https://codecov.io/gh/justinmathias/isocalcR)

<!-- badges: end -->

The goal of `isocalcR` is to provide a suite of user-friendly, open
source, functions for commonly performed calculations when working with
stable isotope data. A major goal of `isocalcR` is to help reduce errors
associated with data compilation necessary for many standard
calculations, as well as to provide the scientific community with a
reliable, easily accessible resource for reproducible work.

## Installation

You can install the released version of isocalcR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("isocalcR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("justinmathias/isocalcR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(isocalcR)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
