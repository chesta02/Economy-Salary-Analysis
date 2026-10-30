Employee Salary Analysis Using R

Project Overview

Employee Salary Analysis is a data analysis project developed using R to explore employee salary patterns, compare salaries across departments, and investigate the relationship between work experience and salary.

The project uses a Kaggle employee dataset and demonstrates data importing, cleaning, descriptive statistics, and visualization.

Objectives

* Import and inspect employee data.
* Identify missing values and duplicate records.
* Prepare a cleaned dataset for analysis.
* Calculate descriptive salary statistics.
* Compare average salaries across departments.
* Examine salary patterns across experience levels.
* Create visualizations to communicate findings.

Technologies Used

* R
* RStudio-compatible R scripts executed through VS Code
* readr
* dplyr
* ggplot2
* Git and GitHub

Dataset

The dataset contains 1,000 employee records and 12 columns, including age, gender, department, salary, joining date, performance score, experience, employment status, location, and work session.

Note: Refer to the original Kaggle dataset page for its source and licensing details.

Project Structure

project/
├── Data/
│   └── Employe_Performance_dataset.csv
├── outputs/
│   ├── plots/
│   ├── employee_salary_cleaned.csv
│   ├── department_salary_summary.csv
│   └── experience_salary_summary.csv
├── reports/
│   └── project_report.md
├── requirements/
│   └── requirements.R
├── scripts/
│   ├── 01_data_import.R
│   ├── 02_data_cleaning.R
│   ├── 03_descriptive_analysis.R
│   └── 04_visualization.R
├── main.R
├── .gitignore
└── README.md

Analysis Performed

1. Data Import

* Imported the CSV dataset.
* Examined column names, dimensions, structure, and summary information.

2. Data Cleaning

* Checked missing values.
* Checked for duplicate rows.
* Removed duplicate rows and records with missing or nonpositive salaries.
* Saved the cleaned dataset for further analysis.

3. Descriptive Analysis

* Calculated average, median, minimum, and maximum salaries.
* Calculated salary standard deviation.
* Compared salary statistics across departments.
* Examined average salaries by experience level.

4. Data Visualization

Generated the following charts:

* Salary distribution histogram
* Department-wise average salary bar chart
* Salary distribution boxplot by department
* Experience versus salary scatter plot with a trend line

Preliminary Findings

* The dataset contains 1,000 employee records.
* The average salary is approximately 5,917.
* The median salary is 5,889.
* HR has the highest average salary among the three departments.
* Sales has the lowest average salary among the three departments.
* The Performance Score column contains 498 missing values.

These findings are descriptive and do not establish that department or experience causes salary differences.

Installation

Install R from the official R Project website.

Install the required packages by running:

Rscript requirements/requirements.R

How to Run

Open the project folder in VS Code and execute:

Rscript main.R

The program imports the dataset, performs cleaning, generates descriptive summaries, and saves visualizations.

Outputs

* Cleaned dataset: outputs/employee_salary_cleaned.csv
* Department summary: outputs/department_salary_summary.csv
* Experience summary: outputs/experience_salary_summary.csv
* Visualizations: outputs/plots/

Future Improvements

* Investigate and handle missing performance scores.
* Analyze salary differences by gender and employment status.
* Study salary trends by joining date.
* Add correlation analysis between salary and experience.
* Build an interactive dashboard using Shiny.

Author

Chesta Chauhan