#test bed
rm(list=ls())
?cor
setwd('~/Github/R2D2')
#source('complete.R')
dir <- '~/specdata'
source('pollutantmean.R')
source('complete.R')
source('corr.R')
getwd()


pollutantmean(dir,'sulfate',5)

#q1
pollutantmean(dir,'sulfate',1:10)
#q2
pollutantmean(dir,'nitrate',70:72)
#q3
pollutantmean(dir,"nitrate",23)


complete(dir,1)
complete(dir,c(2,4,8,10,12))
complete(dir,30:25)
complete(dir,3)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete(dir, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])