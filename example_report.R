library(lubridate)
library(ggplot2)
library(data.table)
library(rmarkdown)

# Get command line arguments
args = commandArgs(trailingOnly=TRUE)

# Read the provided csv file
dt <- fread(args[1])
dt[, date:=as.Date(date)]

# Make the report
render('example_report.Rmd', output_file='example_report.pdf')
