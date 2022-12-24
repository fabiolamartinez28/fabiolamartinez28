library(tidyverse)
NYC_Population_By_Community_Districts
names(NYC_Population_By_Community_Districts)

summary(NYC_Population_By_Community_Districts)
mean_one_population <- mean(NYC_Population_By_Community_Districts$One_Population)
mean_five_population <- mean(NYC_Population_By_Community_Districts$Five_Population)
mean_one_population
t.test(NYC_Population_By_Community_Districts$One_Population,
       conf.level = 0.95)

mean_five_population
t.test(NYC_Population_By_Community_Districts$Five_Population,
       conf.level = 0.95)

