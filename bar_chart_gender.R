library(tidyverse)
nyc_leading_death_causes <- read.csv("New_York_City_Leading_Causes_of_Death.csv")
View(nyc_leading_death_causes)
nyc_leading_death_causes 
names(nyc_leading_death_causes)
 
ggplot(nyc_leading_death_causes, aes(x = Sex)) +
  geom_bar( fill = "blue") +
  theme_bw() + 
  labs(x = " Gender", y = "Total", title = " Bar Chart of Gender")

