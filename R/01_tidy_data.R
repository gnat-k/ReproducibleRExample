library(tidyverse)
library(usethis)


usethis::use_description() #create a DESCRIPTION file
usethis::use_mit_license() #create a LICENSE file

bat_data <- read_csv("data/bat_dat.csv")

bat_data <-
  mutate(bat_data, 
       Site = as.factor(Site), 
       Habitat = as.factor(Habitat),
       Season = as.factor(Season))