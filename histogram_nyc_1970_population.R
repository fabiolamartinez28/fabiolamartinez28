library(tidyverse)
library(readr)
NYC_Population_By_Community_Districts <- read_csv("NYC__Population_By_Community_Districts.csv")
View(NYC_Population_By_Community_Districts)
names(NYC_Population_By_Community_Districts)
dim(NYC_Population_By_Community_Districts)
colnames(NYC_Population_By_Community_Districts) <- c("Borough","CD_Number","CD_Name",
                                                     "One_Population",
                                                     "Two_Population",
                                                     "Three_Population",
                                                     "Four_Polulation",
                                                     "Five_Population")
data()
NYC_Population_By_Community_Districts %>% 
     ggplot(aes(x = One_Population)) +
     geom_histogram(fill = "blue") + 
     theme_bw()+
     labs(x = "1700 Popuplation",
           # y= cummunity districs with the same pupulation
          y = "Community Districts",
          #Histogram of 
          title = "NYC 1970 Pupulation")



