cat("====================================")
cat("\nEMPLOYEE SALARY ANALYSIS\n")
cat("====================================\n")

cat("\nStep 1: Importing dataset...\n")
source("scripts/01_data_import.R")

cat("\nStep 2: Cleaning dataset...\n")
source("scripts/02_data_cleaning.R")

cat("\nStep 3: Performing descriptive analysis...\n")
source("scripts/03_descriptive_analysis.R")

cat("\nStep 4: Generating visualizations...\n")
source("scripts/04_visualization.R")

cat("\nStep 5: Performing correlation analysis...\n")
source("scripts/05_correlation_analysis.R")

cat("\n====================================")
cat("\nPROJECT EXECUTED SUCCESSFULLY!")
cat("\n====================================\n")