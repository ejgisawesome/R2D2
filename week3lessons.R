## WEEK 3

## This will cover:
## Loop Functions:
?lapply;?apply;?tapply;?splt;?mapply
## Debugger, Parts 1-3

## Learn: define anonymous function and describe its use in loops
        ##  describe how to start R debugger for arbitrary R function
        ##  describe what traceback() function does and function call stack
?traceback

## lapply: loop over a list and evaluate a function on each element
## sapply: variant of lapply, tries to simplify result
## apply: apply a function over margins of an array (summary matrix and shit)
## tapply: table/ function over subsets of a vector
## mapply: multivariate version of lapply

## split useful with lapply

?lapply

#sample lapply
x <- list(a=1:5,b=rnorm(10))
lapply(x,mean)
'
$a
[1] 3

$b
[1] -0.0474927 #this changes (normal random variables)

'

#sample 2
x <- list(a = 1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
lapply(x,mean)

#uniformed random variables
x <- 1:4
lapply(x,runif)
'
[[1]]
[1] 0.7530505

[[2]]
[1] 0.8994769 0.2219675

[[3]]
[1] 0.4532690 0.6580089 0.2687386

[[4]]
[1] 0.1601512 0.7686966 0.3872882 0.4466470
'

?runif
#0 and 10 uniform?
lapply(x,runif,min=0,max=10) #pass to the ... on the end

# lapply and friends use anonymous functions
x <- list(a = (matrix(1:4,2,2)), b = matrix(1:6,3,2))
x
'
$a
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$b
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
'
#anonymous functions that aren't outside lapply
lapply(x,function(elt) elt[,1])

## SAPPLY
?sapply
#sapply simplify result (lapply always a list)
#list length 1 turns it to vector
#if every element length is the same number, a matrix
#if not, still a list

#again
x <- list(a = 1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
lapply(x,mean)
'
$a
[1] 2.5

$b
[1] -0.1207499

$c
[1] 1.052907

$d
[1] 5.030402

'
sapply(x,mean)
'
         a          b          c          d 
 2.5000000 -0.1207499  1.0529075  5.0304016 
'

## APPLY
?apply
## evaluate function (anonymous usually) over the margins of array
## apply a funciton to the rows or columns of a matrix
## can be used with general arrays, taking average of array of matrices
## not much faster than writing loop; but works in one line!

str(apply)
# function (X, MARGIN, FUN, ...)
# X is an array; MARGIN integer vector indicates which margins
# should be retained
# FUN is function to apply to the MARGIN
# ... is other arguments passed to FUN

x <- matrix(rnorm(200),20,10)

# mean of each column
apply(x,2,mean)

#sum of each row
apply(x,1,sum)

#shortcuts for col/row sums and means
?rowSums; ?rowMeans; ?colSums; ?colMeans
# MUCH faster, especially with a huge matrix

# other ways to apply
#what is quantile
?quantile #calculate 25th & 75th percentiles of the row
#argument is probs, must be passed
apply(x,1,quantile,probs=c(0.25,0.75))

#average matrix in an array
a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean) #average of a bunch of 2X2
rowMeans(a,dims=2) 
View(a)

#MAPPLY
?mapply
## the others apply the function to a single object
## what if there's more than one?

str(mapply)
## function (FUN, ..., MoreArgs = NULL, SIMPLIFY = TRUE, 
## + USE.NAMES = TRUE) 

## FUN to apply
## ... argumets to apply over (nore list means more arguments)
## MoreArgs; SIMPLIFY

# example
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
#ORRRR
mapply(rep,1:4,4:1) #oh shit
'
[[1]]
[1] 1 1 1 1

[[2]]
[1] 2 2 2

[[3]]
[1] 3 3

[[4]]
[1] 4
'

#Vectorize a function
noise <- function(n,mean,sd){
        rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)

## Instant Vectorization

mapply(noise,1:5,1:5,2)


## TAPPLY

## apply a function over subsets of a vector
