## ASSIGNMENT 3

setwd('~/Github/R2D2')
outcome <- read.csv("outcome-of-care-measures.csv",colClasses="character")
head(outcome)
ncol(outcome)
names(outcome)

outcome[,11] <- as.numeric(outcome[,11])
hist(outcome[,11])

best <- function(state,outcome){
        ##Read outcome data
        outcome <- read.csv("outcome-of-care-measures.csv",colClasses="character")
        
        ##Check that state and outcome are valid
        ##outcome[,7]
        
        
        ##Return hospital name in that state with lowest 30-day death
        ## sort by rate, say first
        winner <- outcome[order()]
        ##Hospital.Name variable is outcome[1,2]
}


