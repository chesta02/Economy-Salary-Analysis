library(readr)
library(dplyr)
library(ggplot2)

salary_data <- read_csv(
  "outputs/employee_salary_cleaned.csv",
  show_col_types = FALSE
)

cat("CORRELATION ANALYSIS\n")
cat("====================\n")

correlation_value <- cor(
  salary_data$Experience,
  salary_data$Salary,
  use = "complete.obs"
)

cat("\nCorrelation between Experience and Salary:\n")
print(round(correlation_value, 3))

correlation_summary <- data.frame(
  Variable_1 = "Experience",
  Variable_2 = "Salary",
  Correlation = round(correlation_value, 3)
)

write_csv(
  correlation_summary,
  "outputs/correlation_summary.csv"
)

dir.create("outputs/plots", recursive = TRUE, showWarnings = FALSE)

correlation_plot <- ggplot(
  salary_data,
  aes(x = Experience, y = Salary)
) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Correlation Between Experience and Salary",
    x = "Years of Experience",
    y = "Salary"
  ) +
  theme_minimal()

ggsave(
  "outputs/plots/experience_salary_correlation.png",
  correlation_plot,
  width = 8,
  height = 5
)

cat("\nCorrelation results saved successfully!\n")
cat("Check outputs/correlation_summary.csv\n")
cat("Check outputs/plots/experience_salary_correlation.png\n")