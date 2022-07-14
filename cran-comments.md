## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
- Duration: 16.2s

- 0 errors ✔ | 0 warnings ✔ | 0 notes ✔

## Updates
- Major updates to functions: d13C input is now d13C.plant. Updated functions to calculate Ci using the "simple", "photorespiration", or "mesophyll" effects formulations, respectively. Now can specify if leaf or wood tissue is used in simple formulation, which will update the apparent fractionation by Rubisco, b, to either 27 or 25.5, respecitvely. Added 'custom.calc' function to allow flexibility in input variables such as atmospheric CO2. Added support for 2021 in streamlined calculations.
