rm(list=ls())
#home
directory <- '~/specdata'

#this didn't work
#install.packages('devtools')
#library(devtools)
#wd(directory)

#set the directory properly this way
?setwd
directory <- '~/specdata'
setwd(directory)
#to go back
setwd('~/GitHub/R2D2')
getwd()
#fuck around and get it
read.csv('001.csv')
x <- 1:101
file <- c(paste('0','0',x[1:9],'.csv',sep=""),paste('0',x[10:99],'.csv',sep=""),paste(x[100:length(x)],'.csv',sep=""))
file
check <- read.csv(file[1:101])
check$sulfate
file

?lapply

source("pollutantmean.R")
pollutantmean("specdata","sulfate",1:10)
