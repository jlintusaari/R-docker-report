library(lubridate)
library(ggplot2)
library(data.table)

# Use the txhousing dataset from ggplot2 as an example
dt <- data.table(txhousing)

# Convert dates to Dates
dt[, date:=as.Date(date_decimal(date))]

# Select 3 largest cities by sales
dt <- dt[city %in% dt[, sum(sales, na.rm=T), by=city][order(-V1)]$city[1:3], ]

# Remove columns to make the csv smaller
dt[, c('year', 'month', 'volume', 'median', 'listings', 'inventory') := NULL]

# Write the csv
fwrite(dt, 'data.csv')
