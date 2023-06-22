library(scales)
library(tidyverse)
library(modelr)


load('trips2015.RData')


trips_with_weather_2015 <- inner_join(trips, weather, by= 'ymd')

trips_with_weather_2015 %>% mutate(tmin = tmin/10)

model3 <- lm(tripduration ~ poly(tmin, 5, raw = T) + I(prcp>0)+ I(snow >0), data=trips_with_weather_2015)

sqrt(mean((predict(model3, trips_with_weather_2015) - trips_with_weather_2015$tripduration)^2))

#RMSE = 7609.505


summary(model3)$r.squared
#R_squared : 0.0001558449 

#WHATTTTTTT???? NEED FURTHER INVESTIGATION
