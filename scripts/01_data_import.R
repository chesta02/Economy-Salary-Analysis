library(readr)

salary_data <- read_csv(
  "Data/Employe_Performance_dataset.csv",
  show_col_types = FALSE
)

cat("Dataset imported successfully!\n")

cat("Number of rows:", nrow(salary_data), "\n")
cat("Number of columns:", ncol(salary_data), "\n")

cat("\nColumn names:\n")
print(names(salary_data))

cat("\nFirst six records:\n")
print(head(salary_data))

cat("\nDataset structure:\n")
str(salary_data)

cat("\nStatistical summary:\n")
summary(salary_data)