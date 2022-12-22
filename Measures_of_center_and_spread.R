library(tidyverse)
NYC_Population_By_Community_Districts

names(NYC_Population_By_Community_Districts)
# Mean and Median
summary(NYC_Population_By_Community_Districts)

?mean
# Mean, Median, Variance, and Standard deviation of NYC 1970 Population
mean(NYC_Population_By_Community_Districts$One_Population)
median(NYC_Population_By_Community_Districts$One_Population)
var(NYC_Population_By_Community_Districts$One_Population)
sd(NYC_Population_By_Community_Districts$One_Population)
sqrt(var(NYC_Population_By_Community_Districts$One_Population))

# Mean, Median, Variance, and Standard deviation of NYC 2010 Population
mean(NYC_Population_By_Community_Districts$Five_Population)
median(NYC_Population_By_Community_Districts$Five_Population)
var(NYC_Population_By_Community_Districts$Five_Population)
sd(NYC_Population_By_Community_Districts$Five_Population)
sqrt(var(NYC_Population_By_Community_Districts$Five_Population))
