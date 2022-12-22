library(tidyverse)
NYC_Population_By_Community_Districts

names(NYC_Population_By_Community_Districts)


NYC_Population_By_Community_Districts %>% 
  ggplot(aes(x = Five_Population)) +
  geom_histogram(fill = "blue") + 
  theme_bw()+
  labs(x = "2010 Popuplation",
       # y= cummunity districs with the same pupulation
       y = "Community Districts",
       #Histogram of 
       title = "NYC 2010 Pupulation")
