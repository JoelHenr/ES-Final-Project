library(tidyverse)
library(wooldridge)
library(broom)
library(car)
library(pdfetch)
library(magrittr)
library(lmtest)
library(sandwich)
library(tsibble)  

df <- read.csv("https://raw.githubusercontent.com/JoelHenr/ES-Final-Project/master/ES%20Project.csv", TRUE, ",")
class(df)
glimpse(df) 

est <-lm (Wins ~ First.serve, data=df) 
tidy(est) 
glance(est)


est <-lm (Wins ~ First.serve + aces+break_points_converted, data=df)
tidy(est) 
glance(est)
