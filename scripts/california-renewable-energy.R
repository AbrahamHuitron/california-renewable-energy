# list of packages used for data import and analysis
library(data.table) # used for data import, faster than readr and read.csv

# setting working directory of project
setwd("~/Projects/R/california-renewable-energy")

# importing dataset
dataset <- fread(".\\data\\all_breakdown.csv")
