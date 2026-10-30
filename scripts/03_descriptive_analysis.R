library(readr)
library(dplyr)

salary_data <- read_csv(
  "outputs/employee_salary_cleaned.csv",
  show_col_types = FALSE
)

cat("EMPLOYEE SALARY ANALYSIS\n")
cat("========================\n")

cat("\nOverall Salary Statistics:\n")

salary_stats <- salary_data %>%
  summarise(
    Total_Employees = n(),
    Average_Salary = mean(Salary, na.rm = TRUE),
    Median_Salary = median(Salary, na.rm = TRUE),
    Minimum_Salary = min(Salary, na.rm = TRUE),
    Maximum_Salary = max(Salary, na.rm = TRUE),
    Standard_Deviation = sd(Salary, na.rm = TRUE)
  )

print(salary_stats)

cat("\nDepartment-wise Salary Analysis:\n")

department_stats <- salary_data %>%
  group_by(Department) %>%
  summarise(
    Employee_Count = n(),
    Average_Salary = round(mean(Salary, na.rm = TRUE), 2),
    Median_Salary = median(Salary, na.rm = TRUE),
    Minimum_Salary = min(Salary, na.rm = TRUE),
    Maximum_Salary = max(Salary, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  arrange(desc(Average_Salary))

print(department_stats)

cat("\nExperience-wise Salary Analysis:\n")

experience_stats <- salary_data %>%
  group_by(Experience) %>%
  summarise(
    Employee_Count = n(),
    Average_Salary = round(mean(Salary, na.rm = TRUE), 2),
    .groups = "drop"
  ) %>%
  arrange(Experience)

print(experience_stats)

write_csv(
  department_stats,
  "outputs/department_salary_summary.csv"
)

write_csv(
  experience_stats,
  "outputs/experience_salary_summary.csv"
)

cat("\nAnalysis completed successfully!\n")