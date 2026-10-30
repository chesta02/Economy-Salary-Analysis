Employee Salary Analysis Using R

Overview

Employee Salary Analysis is a data analysis project developed using R to explore employee salary patterns, department-wise salary differences, and the relationship between professional experience and salary.

The project demonstrates data import, data cleaning, descriptive statistics, data visualization, and correlation analysis using R programming.

Objectives

* Import and inspect an employee dataset.
* Identify missing values and duplicate records.
* Clean the dataset for analysis.
* Calculate descriptive salary statistics.
* Compare average salaries across departments.
* Analyze salary patterns across experience levels.
* Visualize salary distributions using statistical plots.
* Examine the linear correlation between experience and salary.

Dataset

Dataset file: Data/Employe_Performance_dataset.csv

The project uses an employee performance dataset containing fields such as:

* Employee ID
* Name
* Age
* Gender
* Department
* Salary
* Joining Date
* Performance Score
* Experience
* Employment Status
* Location
* Session

The dataset contains 1,000 records and 12 columns, based on the initial dataset inspection.

Dataset source: Kaggle.

Replace this source description with the exact Kaggle dataset title and URL before publishing if you have them available.

Technologies Used

* Language: R
* IDE: Visual Studio Code
* Data Import: readr
* Data Manipulation: dplyr
* Data Visualization: ggplot2
* Version Control: Git and GitHub

Project Structure

Economy-Salary-Analysis/
├── Data/
│   └── Employe_Performance_dataset.csv
├── outputs/
│   ├── plots/
│   │   ├── department_salary.png
│   │   ├── experience_salary.png
│   │   ├── experience_salary_correlation.png
│   │   ├── salary_boxplot.png
│   │   └── salary_distribution.png
│   ├── correlation_summary.csv
│   ├── department_salary_summary.csv
│   ├── employee_salary_cleaned.csv
│   └── experience_salary_summary.csv
├── reports/
│   └── project_report.md
├── requirements/
│   └── requirements.R
├── scripts/
│   ├── 01_data_import.R
│   ├── 02_data_cleaning.R
│   ├── 03_descriptive_analysis.R
│   ├── 04_visualization.R
│   └── 05_correlation_analysis.R
├── .gitignore
├── main.R
└── README.md

Installation and Setup

1. Install R

Download and install R from the official R Project website:

https://www.r-project.org/

2. Install Required Packages

Open the VS Code terminal and run:

R -e 'install.packages(c("readr", "dplyr", "ggplot2"), repos="https://cloud.r-project.org")'

3. Run the Project

Ensure your terminal is in the project root directory, where main.R is located.

Run:

Rscript main.R

The script executes the following stages:

1. Dataset import
2. Data cleaning
3. Descriptive analysis
4. Data visualization
5. Correlation analysis

Data Cleaning

The cleaning script:

* Checks missing values in each column.
* Identifies duplicate records.
* Removes exact duplicate rows.
* Removes records with missing or non-positive salary values.
* Saves the cleaned dataset to outputs/employee_salary_cleaned.csv.

Missing performance scores are retained during this cleaning stage.

Analysis Performed

1. Descriptive Statistics

The project calculates:

* Total employee count
* Mean salary
* Median salary
* Minimum salary
* Maximum salary
* Standard deviation

2. Department-Wise Salary Analysis

Employees are grouped by department to compare employee counts and salary statistics.

3. Experience-Wise Salary Analysis

Average salary is calculated for each experience value to explore salary patterns across experience levels.

4. Salary Visualization

The project generates the following plots:

Visualization	Purpose
Salary Distribution	Examines the distribution of employee salaries
Average Salary by Department	Compares average salaries across departments
Salary Boxplot	Compares salary distributions and potential outliers across departments
Experience vs Salary	Examines the relationship between experience and salary
Experience-Salary Correlation	Visualizes the relationship with a fitted linear trend

5. Correlation Analysis

The correlation script calculates the Pearson correlation coefficient between experience and salary.

The initial analysis produced a correlation of approximately 0.004, indicating almost no linear relationship between these two variables in the analyzed dataset.

This result describes linear association only. It does not establish causation or rule out nonlinear relationships.

Output Files

The project generates:

* A cleaned employee dataset.
* Department-wise salary summary.
* Experience-wise salary summary.
* Correlation summary.
* Five visualization images.

Generated outputs are stored in the outputs/ directory.

Key Learning Outcomes

Through this project, I practiced:

* Importing CSV data into R.
* Inspecting dataset structure and data types.
* Handling missing values and duplicate records.
* Using dplyr for data manipulation.
* Calculating descriptive statistics.
* Creating visualizations using ggplot2.
* Performing correlation analysis.
* Organizing an R project into reusable scripts.
* Using Git and GitHub for version control.

Future Improvements

* Add salary analysis by department, age, and employment status.
* Investigate outliers and missing values in greater detail.
* Explore statistical significance and nonlinear relationships.
* Build an interactive dashboard using Shiny.
* Add automated data validation and reporting.

Author

Chesta Chauhan