library(tidyverse)
NYC_Population_By_Community_Districts

names(NYC_Population_By_Community_Districts)
# scatter plot of NYC of years 1970 and 2010
names(NYC_Population_By_Community_Districts)

ggplot() +
       geom_point(NYC_Population_By_Community_Districts, 
                 mapping =  aes( x = One_Population,
                       y = NYC_CD),
                 color = "blue" ) +
      geom_point(NYC_Population_By_Community_Districts, 
                 mapping =  aes( x = Five_Population,
                                 y = NYC_CD),
                           color = "red" ) +
                 theme_bw() +
                labs( x = "NYC's Population" ,
                      y = "NYC's Districts",
                      title = "Scatterplots of NYC's Populations From Years 1970 and 2010") 


cor.test(NYC_Population_By_Community_Districts$Five_Population,
         NYC_Population_By_Community_Districts$One_Population )                    
cor.test(NYC_Population_By_Community_Districts$One_Population,
         NYC_Population_By_Community_Districts$NYC_CD )
cor.test(NYC_Population_By_Community_Districts$Five_Population,
         NYC_Population_By_Community_Districts$NYC_CD )


       
          