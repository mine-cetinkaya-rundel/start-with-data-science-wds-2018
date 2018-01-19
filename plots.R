library(tidyverse)

interest <- c(0.19, 0.31, 0.40, 0.55)*100
year <- 2014:2017
perc_non_male <- c(0.44, 0.50, 0.35, 0.55)*100

d <- tibble(interest = interest,
            year = year, 
            perc_non_male = perc_non_male)

ggplot(d, aes(x = year, y = interest)) +
  geom_point() +
  geom_line() +
  theme_minimal() +
  labs(title = "Pipeline for stats major",
       y = "% interested in majoring in stats",
       x = "Year") +
  ylim(0, 100)

ggplot(d, aes(x = year, y = perc_non_male)) +
  geom_point() +
  geom_line() +
  theme_minimal() +
  labs(title = "Increasing non-male audience",
       y = "% non male",
       x = "Year") +
  ylim(0,100)
