#NAVAL DATASET

library(readr)
library(dplyr)
library(plyr)


#1. Kernel Density plot
x=c(navd$`compressor decay state coeff`)
y=c(navd$`Turbine decay state coeff`)
d<-density(x,y)
plot(d)


#2. Scatterplot matrix using naval dataset
navd<- read_csv("C:/Users/Pavan/Downloads/naval_vessel1.csv")
View(navd)
colSums(is.na(navd))
pairs(navd)


#3. Min-Max Scaling to the naval dataset
colSums(is.na(navd))
View(navd)
nv <- (navd-min(navd))/(max(navd)-min(navd))
head(nv)


#4.From the naval dataset find out mean and median of both the outputs.
meanmed_df<-data.frame(mean_cdsc=(mean(navd$`compressor decay state coeff`)), 
                       mean_tdsc=(mean(navd$`Turbine decay state coeff`)),
                       median_cdsc=(median(navd$`compressor decay state coeff`)),
                       median_tdcs=(median(navd$`Turbine decay state coeff`)))
