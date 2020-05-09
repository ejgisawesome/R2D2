#test bed
rm(list=ls())
?cor
setwd('~/Github/R2D2')
#source('complete.R')

source('pollutantmean.R')
source('complete.R')
source('corr.R')
dir <- '~/specdata'
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
ccdb <- complete(dir)
ccdb$nobs>100
         
RNGversion("3.5.1")  
set.seed(42)
cc <- complete(dir, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

cr <- corr(dir,400)
head(cr)

cr <- corr(dir)                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr(dir, 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr(dir, 2000)                
n <- length(cr)                
cr <- corr(dir, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))