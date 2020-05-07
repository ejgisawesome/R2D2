#CORR
?cor
#setwd('~/Github/R2D2')
#source('complete.R')

corr <- function(directory, threshold = 0){
        setwd(directory)
        #getwd()
        full <- complete(directory)
        filtered <- subset(observations,observations$nobs > threshold)
        
        file_list <- list.files(directory)
        correlation <- vector()
        
        for (i in filtered$id) {
                file_dir <- paste(directory,file_list[i],sep="")
                file_data <- read.csv(file_dir)
                file_data <- subset(file_data, complete.cases(file_data))
                correlation <- c(correlation, cor(file_data$nitrate,file_data$sulfate))
        }
        
        correlation
}

corr(dir,150)
