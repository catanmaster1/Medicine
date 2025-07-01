options(repos = c(CRAN = "http://cran.us.r-project.org"))


library("dplyr")
library("haven")
library("ggplot2")

data <- read_dta("~/Downloads/OneMonth.dta")


data$pay1 <- as.factor(data$pay1)


ggplot(data, aes(x = pay1, y = los)) +
  geom_boxplot(
    fill = "skyblue",
    color = "black",

  ) +
  labs(
    x = "Payment Type",
    y = "Length of Stay (Days)",
    title = "Distribution of LOS by Payment Type"
  ) +
  scale_x_discrete(
    labels = c("Medicare", "Medicaid", "Private Insurance", "Self-Pay", "No Charge", "Other")
  ) +
  coord_cartesian(
    ylim = c(0, 10)
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text.x = element_text(size = 10),
    axis.text.y = element_text(size = 10)

  )

summary(data$los)
model_lin <- glm(los ~ factor(pay1),
data = data, family = binomial)
summary(model_lin)