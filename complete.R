# COMPLETE
rm(list=ls())


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
        data.frame(id = ids, nobs = nobs)
}

complete(dir,1)
complete(dir,c(2,4,8,10,12))
complete(dir,30:25)
complete(dir,3)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete(dir, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])