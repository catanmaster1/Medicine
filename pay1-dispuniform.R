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
     y = as.numeric(data$dispuniform),
     xlab = "Payment Type",
     ylab = "Discharge Status",
     main = "Relationship between LOS and Total Charges",
     pch = 19,
     col = "black",
     cex.axis = 0.8,
     xaxt = "n",
     tcl = -0.5,
     las = 1,
     ylim = c(0,100)

)


axis(side = 1,
     at = 1:6,
     labels = c("Medicare", "Medicaid", "Private Insurance", "Self-Pay", "No Charge", "Other"),
     cex.axis = 0.8

)