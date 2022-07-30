# list of packages used for data import and analysis
require(data.table) # used for data import, faster than readr and read.csv
require(dlookr) # used for statistical descriptions and analysis
require(dplyr) # used for data manipulation
require(tidyverse) # used for data 'tidying'
require(ggplot2) # used for data visualization

# setting working directory of project
setwd("~/Projects/R/california-renewable-energy")

# importing dataset
dataset <- fread(".\\data\\all_breakdown.csv")

# quick dataset preview
head(dataset)

# checking size & dimensions of the dataset
dim(dataset)

# display the structure of the dataset
str(dataset)

# displaying the statistics of all numerical values
describe(dataset)





# correlation matrix <----