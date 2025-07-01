options(repos = c(CRAN = "http://cran.us.r-project.org"))
install.packages("ggplot2")
install.packages("haven")
install.packages("dplyr")
library("dplyr")
library("haven")
library("ggplot2")

data <- read_dta("~/Downloads/Small.dta")
plot(
     x = as.numeric(data$pay1),
     y = as.numeric(data$totchg),
     xlab = "Payment Type",
     ylab = "Total Charges (U.S. Dollars)",
     main = "Relationship between LOS and Total Charges",
     pch = 19,
     col = "black",
     cex.axis = 0.8,
     xaxt = "n",
     tcl = -0.5,
     las = 1,
     ylim = c(0,1400000)
)




axis(side = 1,
     at = 1:6,
     labels = c("Medicare", "Medicaid", "Private Insurance", "Self-Pay", "No Charge", "Other"),
     cex.axis = 0.8

)
axis(
  side=2,
  at = 1:7,
  ylim = c(0,1400000),
  cex.axis = 0.5
)
summary(data$totchg)