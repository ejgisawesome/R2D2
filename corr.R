#CORR
#gl
corr <- function(directory, threshold = 0){
    ## y'all really making me type that
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    #setwd(directory)
    setwd(dir) #testing
    #getwd()
    #files <- dir(directory)
    files <- dir(dir)
    
    comp <- complete(dir,1:332)
    #threshold = 400 #testing
    cct <- comp[,2]>threshold
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observation (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## return a numeric vector of correlations
    ## NOTE: Do not round the result!
  
  
    setwd('~/Github/R2D2')
}

corr(dir,150)
complete(dir,c(2,4,8,10,12)) #put it in the environment
