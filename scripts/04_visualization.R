library(readr)
library(dplyr)
library(ggplot2)

salary_data <- read_csv(
  "outputs/employee_salary_cleaned.csv",
  show_col_types = FALSE
)

dir.create("outputs/plots", recursive = TRUE, showWarnings = FALSE)

salary_histogram <- ggplot(salary_data, aes(x = Salary)) +
  geom_histogram(bins = 30, color = "black") +
  labs(
    title = "Distribution of Employee Salaries",
    x = "Salary",
    y = "Number of Employees"
  ) +
  theme_minimal()

ggsave(
  "outputs/plots/salary_distribution.png",
  salary_histogram,
  width = 8,
  height = 5
)

department_salary <- salary_data %>%
  group_by(Department) %>%
  summarise(
    Average_Salary = mean(Salary, na.rm = TRUE),
    .groups = "drop"
  )

department_bar <- ggplot(
  department_salary,
  aes(
    x = reorder(Department, Average_Salary),
    y = Average_Salary
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Average Salary by Department",
    x = "Department",
    y = "Average Salary"
  ) +
  theme_minimal()

ggsave(
  "outputs/plots/department_salary.png",
  department_bar,
  width = 8,
  height = 5
)

salary_boxplot <- ggplot(
  salary_data,
  aes(x = Department, y = Salary)
) +
  geom_boxplot() +
  labs(
    title = "Salary Distribution Across Departments",
    x = "Department",
    y = "Salary"
  ) +
  theme_minimal()

ggsave(
  "outputs/plots/salary_boxplot.png",
  salary_boxplot,
  width = 8,
  height = 5
)

experience_scatter <- ggplot(
  salary_data,
  aes(x = Experience, y = Salary)
) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Experience vs Salary",
    x = "Years of Experience",
    y = "Salary"
  ) +
  theme_minimal()

ggsave(
  "outputs/plots/experience_salary.png",
  experience_scatter,
  width = 8,
  height = 5
)

cat("All visualizations created successfully!\n")
cat("Check the outputs/plots folder.\n")