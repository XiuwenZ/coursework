library(scales)
library(broom)
library(modelr)
library(tidyverse)

options(na.action = na.warn)


bwt <- read.table('babyweights.txt')
head(bwt)

view(bwt)

