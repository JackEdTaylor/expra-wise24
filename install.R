# packages
packages <- c(
  "IRkernel",
  "tibble",
  "dplyr",
  "Cairo",
  "ggplot2",
  "usethis"
)

install.packages(packages, repos="https://cloud.r-project.org/")

# set up IRkernel
IRkernel::installspec()

# set up Cairo graphics
opt <- c(
  "",
  "options(repr.plot.width=3.5, repr.plot.height=3)",
  "",
  ".First <- function() {",
  "  require(Cairo)",
  "  Cairo::CairoPNG()",
  "}"
)
# profile_loc <- file.path(R.home(component="etc"), "Rprofile.site")
profile_loc <- file.path(".Rprofile")
writeLines(opt, profile_loc)
