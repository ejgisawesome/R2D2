#MY CORR IS STOLEN
#NO REGISTRATION


corr <- function(directory, threshold = 0) {
        # Get full path of the specsdata folder
        setwd(directory)   
        files <- dir(directory)
        #Get observations and filter by threshold
        observations <- complete(directory)
        filtered_observations = subset(observations,observations$nobs > threshold)
        
        # Aux variables
        
        file_list <- do.call(rbind,lapply(files,read.csv))
        correlation <- vector()
        
        # For each id in filtered observations:
        for (i in filtered_observations$id) {
                # Read the file,
                file_dir <- paste(directory,file_list[i],sep="")
                file_data <- read.csv(file_dir)
                # remove NA,
                file_data <- subset(file_data,complete.cases(file_data))        
                # and calculate the cor and accumulate it in the corellation vector.
                correlation <- c(correlation,cor(file_data$nitrate,file_data$sulfate))    
        }
        #Finally, return the vector
        correlation
}

cr <- corr(dir)                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)
