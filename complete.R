# COMPLETE
#rm(list=ls())
#setwd('~/Github/R2D2')
#getwd()
#dir <- '~/specdata'

complete <- function(directory,id=1:332){
        ## 'directory' is char vector length 1 for location
        setwd(directory)
       #getwd()
      files <- dir(directory)
      ids <- vector()
      nobs <- vector()
  
      #alldata <- do.call(rbind,lapply(files,read.csv))
       for (x in id) {
       somedata <- do.call(rbind,lapply(files[x],read.csv))
        # id is integer for id numbers
        
        ## Return data frame of the form:
        ## id   nobs
        ## 1    117
        ## 2   1041
        ## ...
        ## where 'id' is ID# and 'nobs' is # complete cases
       
       
       ids = c(ids,x) 
       nobs = c(nobs,sum(complete.cases(somedata)))
       }
      setwd('~/Github/R2D2')
      
        data.frame(id = ids, nobs = nobs)
}
