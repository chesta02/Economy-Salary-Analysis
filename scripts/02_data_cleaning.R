library(readr)
library(dplyr)

salary_data <- read_csv(
  "Data/Employe_Performance_dataset.csv",
  show_col_types = FALSE
)

cat("Original dataset dimensions:\n")
print(dim(salary_data))

cat("\nMissing values in each column:\n")
print(colSums(is.na(salary_data)))

cat("\nDuplicate rows:", sum(duplicated(salary_data)), "\n")

salary_cleaned <- salary_data %>%
  distinct() %>%
  filter(!is.na(Salary), Salary > 0)

cat("\nCleaned dataset dimensions:\n")
print(dim(salary_cleaned))

cat("\nMissing values after cleaning:\n")
print(colSums(is.na(salary_cleaned)))

dir.create("outputs", showWarnings = FALSE)

write_csv(
  salary_cleaned,
  "outputs/employee_salary_cleaned.csv"
)

cat("\nCleaned dataset saved successfully!\n")