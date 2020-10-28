#### R-Ladies Ottawa
### October 27, 2020

require(tidytuesdayR)
library(dplyr)
library(sf) # the base package manipulating shapes
library(rgdal) # geo data abstraction library
library(geojsonio) # geo json input and output
library(spdplyr) # the `dplyr` counterpart for shapes
library(rmapshaper) # the package that allows geo shape transformation
library(magrittr) # data wrangling
library(dplyr)
library(tidyr)
library(ggplot2)


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

wind_turb_by_prov <- wind_turbine %>% 
  group_by(province_territory) %>% 
  tally() %>% 
  arrange(desc(total_by_prov)) 

wind_turb_manuf <- wind_turbine %>% 
  group_by(manufacturer, province_territory) %>% 
  tally() %>% 
  arrange(desc(n))


