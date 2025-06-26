options(repos = c(CRAN = "http://cran.us.r-project.org"))
library("dplyr")
library("haven")
library("ggplot2")
data <- read_dta("~/Downloads/Small.dta")
plot(x = data$pay1,
     y = data$los,
     xlab = "Payment Type (pay1)",
     ylab = "Length of Stay (los)",
     main = "Relationship between LOS and Payment Type"
)
