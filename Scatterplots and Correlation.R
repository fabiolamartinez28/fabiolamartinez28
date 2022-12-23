library(tidyverse)
NYC_Population_By_Community_Districts

names(NYC_Population_By_Community_Districts)
# scatter plot of NYC of years 1970 and 2010

ggplot(NYC_Population_By_Community_Districts,
       aes( x = One_Population,
           y = Five_Population,
             add = "reg.line")) +
       geom_point( colour = "blue") +
       geom_smooth(method = lm, se = F) +
       theme_bw()+
       labs(x = "NYC 1970's Population",
             y = "NYC 2010's Pipulation",
             title = "NYC's Pupulation" )
       
       
          