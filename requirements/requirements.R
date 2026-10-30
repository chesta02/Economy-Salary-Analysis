required_packages <- c(
"readr",
"dplyr",
"ggplot2"
)

installed_packages <- rownames(installed.packages())

for (package in required_packages) {
if (!(package %in% installed_packages)) {
install.packages(
package,
repos = "https://cloud.r-project.org"
)
}
}

cat("All required packages are installed!\n")