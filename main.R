cat("====================================\n")
cat("     EMPLOYEE SALARY ANALYSIS\n")
cat("====================================\n\n")

cat("Step 1: Importing dataset...\n")
source("scripts/01_data_import.R")

cat("\nStep 2: Cleaning dataset...\n")
source("scripts/02_data_cleaning.R")

cat("\nStep 3: Performing descriptive analysis...\n")
source("scripts/03_descriptive_analysis.R")

cat("\nStep 4: Generating visualizations...\n")
source("scripts/04_visualization.R")

cat("\n====================================\n")
cat("PROJECT EXECUTED SUCCESSFULLY!\n")
cat("====================================\n")