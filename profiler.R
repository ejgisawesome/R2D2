## PROFILER

## Make code more efficient

?system.time()

## Design first, optimize way later dude
## Root of all evil and what not

## Measure (don't guess)

##system.time evaluates r expression time to eval

## elapsed time vs user time
## some libraries use multiple cores
## some parallel processing libraries (multiple cores/comps)

#ex 1
system.time(readLines("http://www.jhsph.edu"))
'
   user  system elapsed 
   0.09    0.07    0.89 
'
#ex 2
hilbert <- function(n) {
        i <- 1:n
        1 / outer(i-1, i, "+")
}
x <- hilbert(1000)
system.time(svd(x))
## wtf is svd
?svd
rm(list=ls())
## are macs faster?  I got like user and elapsed same
## i think it's a single core outchea
'
   user  system elapsed 
   1.81    0.02    1.83 
'

system.time({
        n <- 1000
        r <- numeric(n)
        for (i in 1:n){
                x <- rnorm(n)
                r[i] <- mean(x)
        }
})
'
   user  system elapsed 
   0.06    0.01    0.07 
'

## PART 2

## Rprof()
?Rprof() ## THE R PROFILER
str(Rprof) ## these don't say much

## R must be compiled with profiler support (usually is)
## summaryRprof() is how to read it

## Systemtime and Rprof together you're gonna have a bad time

## Rprof queries function call stack in intervals

## summaryRprof() tabulates output, calcs time in each

## Normalizing by total / by self


