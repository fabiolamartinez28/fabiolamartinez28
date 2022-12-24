library(tidyverse)
NYC_Population_By_Community_Districts
summary(NYC_Population_By_Community_Districts)

names(NYC_Population_By_Community_Districts)

NYC_Population_By_Community_Districts$NYC_CD <- 1:59
 par(mfrow = c(1, 2)) 
# linear regression
 ggplot(NYC_Population_By_Community_Districts,
        aes( x = One_Population,
              y = residual,
                  add = "reg.line")) +
   geom_point( colour = "blue") +
   geom_smooth(method = lm, se = F) +
   theme_bw()+
   labs(x = "NYC 1970's Population",
        y = "Residulas ",
        title = "NYC's Pupulation" ) 
 
ggplot(NYC_Population_By_Community_Districts,
       aes( x = NYC_Population_By_Community_Districts$residual
           y = NYC_Population_By_Community_Districts$NYC_CD) ) +
  geom_histogram(fill = "red") +
  theme_bw()+
  labs(x = "NYC 2010's Population",
       y = "Districs ",
       title = "NYC's Pupulation" ) 
      


regression <- lm(NYC_CD ~ One_Population, 
                 data = NYC_Population_By_Community_Districts) +
                 geom_smooth()
# Residuals

summary(regression)


residuals(regression)
NYC_Population_By_Community_Districts$residual <- residuals(regression)
view( NYC_Population_By_Community_Districts$residual)
