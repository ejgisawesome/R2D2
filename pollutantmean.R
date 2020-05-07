rm(list=ls())

#Pollutant Mean Formula
dir <- '~/specdata'



pollutantmean <- function(directory,pollutant,id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of CSV files
        
        setwd(directory)
        #getwd()
        files <- dir(directory)
        
        #alldata <- do.call(rbind,lapply(files,read.csv))
        x <- id
        somedata <- do.call(rbind,lapply(files[x],read.csv))
        
        #somedata #print to check
        
        ## 'pollutant' is a character vector of length 1 indicating the
        ## name of the pollutant for which we will calculate the mean;
        ## either 'sulfate' or 'nitrate'
      
        #pollutant <- as.character(pollutant)
        
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
        mean(somedata[[pollutant]],na.rm=TRUE)
}


pollutantmean(dir,'sulfate',5)
#q1
pollutantmean(dir,'sulfate',1:10)
#q2
pollutantmean(dir,'nitrate',70:72)
#q3
pollutantmean(dir,"nitrate",23)
