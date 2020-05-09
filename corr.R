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
    
    'for (x in id) {
      somedata <- do.call(rbind,lapply(files[x],read.csv))
      # id is integer for id numbers
      
      ## Return data frame of the form:
      ## id   nobs
      ## 1    117
      ## 2   1041
      ## ...
      ## where id is ID# and nobs is # complete cases
      
      
      ids = c(ids,x) 
      nobs = c(nobs,sum(complete.cases(somedata)))
    }'
    
    #alldata <- do.call(rbind,lapply(files,read.csv))
    comp <- complete(dir)
    #threshold = 600
    
    x <- comp$id[comp$nobs>threshold]
    
    setwd(dir)
    somedata <- do.call(rbind,lapply(files[x],read.csv))
      someusefuldata <- na.omit(somedata)
      howmuch <- length(someusefuldata$Date)
      
      
      corky <- cor(someusefuldata$sulfate,someusefuldata$nitrate,use = "complete.obs")
      
    
    #threshold = 400 #testing
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observation (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## return a numeric vector of correlations
    ## NOTE: Do not round the result!
  
  
    setwd('~/Github/R2D2')
    corky
}

corr(dir,150)
complete(dir,c(2,4,8,10,12)) #put it in the environment
someusefuldata$nitrate[1]
someusefuldata$nitrate[2]



