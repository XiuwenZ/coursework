library(scales)
library(tidyverse)
library(modelr)

city_day <- read.table(gzfile("city_day_agg_cleaned.csv.gz"))

country_day <- read.table(gzfile("country_day_agg_cleaned.csv.gz"))

