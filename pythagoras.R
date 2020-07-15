hype <- function(a,b){
        c <- (a^2 + b^2)^(1/2)
        return(c)
}

side <- function(c,b){
        if (c > b) {
              a <- (c^2 - b^2)^(1/2)  
        } else {
                a <- (b^2 - c^2)^(1/2)
        }
        
        return(a)
}