library(tidyverse)
library(lubridate)
library(scales)

theme_set(theme_bw())

# set figure sizes for the notebook
options(repr.plot.width=4, repr.plot.height=3)

# read in data 
citibike_jan <- read_csv('201401-citibike-tripdata.csv')
head(citibike_jan)
