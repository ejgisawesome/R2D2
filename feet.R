feet <- function(inches){
        ft <- floor(inches/12)
        inch <- inches %% 12
        return(paste(ft,"ft",inch,"in"))
}