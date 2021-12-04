#TITANIC DATASET

library(MASS)
library(dplyr)

#Load the Titanic dataset (inbuilt to R), then find out how many male child survived?
data_tdf<-tbl_df(Titanic)
sub_ms <- subset(data_tdf,Sex=="Male" & Age=="Child" &  Survived=="Yes")
summarize(sub_ms,sum_mcst=sum(n))


#How many first class passengers are there?
data_tdf<-tbl_df(Titanic)
sub_class <- subset(data_tdf,Class=="1st")
summarize(sub_class,sum_first=sum(n))
