options(repos = c(CRAN = "http://cran.us.r-project.org"))
library("dplyr")
library("haven")
library("ggplot2")

data <- read_dta("~/Downloads/OneMonth.dta")


plot(x = as.numeric(data$pay1),
     y = data$los,
     xlab = "Payment Type (pay1)",
     ylab = "Length of Stay (los)",
     main = "Relationship between LOS and Payment Type",
     pch = 19,
     col = "black",
     xaxt = "n",
     cex.axis = 0.8,
     tcl = -0.5,
     las = 1,
     ylim = c(0, 380)

)


axis(side = 1,
     at = 1:6,
     labels = c("Medicare", "Medicaid", "Private Insurance", "Self-Pay", "No Charge", "Other"),
     cex.axis = 0.8

)

