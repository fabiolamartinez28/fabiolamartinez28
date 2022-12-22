library(tidyverse)
NYC_Population_By_Community_Districts

names(NYC_Population_By_Community_Districts)

 
NYC_Population_By_Community_Districts %>% 
  ggplot(aes(x = Three_Population)) +
  geom_histogram(fill = "blue") + 
  theme_bw()+
  labs(x = "1900 Popuplation",
       # y= cummunity districs with the same pupulation
       y = "Community Districts",
       #Histogram of 
       title = "NYC 1990 Pupulation")
