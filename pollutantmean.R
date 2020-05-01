#Pollutant Mean Formula
directory <- '~/specdata'
directory <- 'specdata'


pollutantmean <- function(directory,pollutant,id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of CSV files
        
        direct <- paste('~/',directory,sep="")
        setwd(direct)
        getwd()
        files <- dir(direct)
        
        alldata <- do.call(rbind,lapply(files,read.csv))
        x <- id
        somedata <- do.call(rbind,lapply(files[x],read.csv))
        
        
        ## 'pollutant' is a character vector of length 1 indicating the
        ## name of the pollutant for which we will calculate the mean;
        ## either 'sulfate' or 'nitrate'
        
        pollutant <- names(data)
        
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
        useful <- mean(data$sulfate,na.rm = TRUE)
         
}

?id
