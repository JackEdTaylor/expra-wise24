# packages
install.packages("IRkernel")
install.packages("tibble")
install.packages("dplyr")
install.packages("Cairo")
install.packages("ggplot2")
install.packages("lme4")

# set up IRkernel
IRkernel::installspec()

# set up Cairo graphics
opt <- c(
  "",
  "options(repr.plot.width=3.5, repr.plot.height=3)",
  "",
  ".First <- function() {",
  "  require(Cairo)",
  "  CairoPNG()",
  "}"
)
profile_loc <- file.path(R.home(component="etc"), "Rprofile.site")
writeLines(opt, profile_loc)
