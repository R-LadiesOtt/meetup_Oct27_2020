#### R-Ladies Ottawa
### October 27, 2020

require(tidytuesdayR)
library(dplyr)
library(ggplot2)
library(lubridate)

## Section 1 (code provided by https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-10-27) 

# Get the Data

# Read in with tidytuesdayR package 
# Install from CRAN via: install.packages("tidytuesdayR")
# This loads the readme and all the datasets for the week of interest

# Either ISO-8601 date or year/week works!

tuesdata <- tidytuesdayR::tt_load('2020-10-27')
tuesdata <- tidytuesdayR::tt_load(2020, week = 44)

wind_turbine <- tuesdata$`wind-turbine`

# Or read in the data manually

#wind_turbine <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-10-27/wind-turbine.csv')
