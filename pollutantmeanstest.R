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

#idk what i'm trying to do here

?do.call

pollutant <- c('sulfate','nitrate')
length(pollutant)

pollutantmean(dir,'nitrate',5)




#test bed

pollutantmeantest <- function(directory,pollutant,id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of CSV files
  
  setwd(directory)
  getwd()
  files <- dir(directory)
  
  alldata <- do.call(rbind,lapply(files,read.csv))
  x <- id
  somedata <- do.call(rbind,lapply(files[x],read.csv))
  #somedata #print to check
  
  ## 'pollutant' is a character vector of length 1 indicating the
  ## name of the pollutant for which we will calculate the mean;
  ## either 'sulfate' or 'nitrate'
  
  #pollutant <- as.character(pollutant)
  str(somedata)
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
# useful <- mean(somedata$nitrate,na.rm = TRUE)
#  useful
}

pollutantmeantest(dir,'nitrate',5)
