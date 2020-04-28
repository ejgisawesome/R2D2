add2 <- function(x,y){
  x+y
}

above10 <-function(x){
  use <- x>10
  x[use]
}

above <- function(x,n) {
  use <- x>n
  x[use]
}

above <- function(x,n=10) {
  use <- x>n
  x[use]
}

columnmean <- function(y,removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i],na.rm=removeNA)
  }
  means
}

climclim<-clim[!is.na()]

#... (collects all arguments so you don't need to write them all) (first arg in paste())
?paste #see?
?cat #concatenate
#anything after ... can't be partially matched
paste("a","b",sep=":")
paste("a","b",se=":") #no typos

