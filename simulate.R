## SIMULATION LESSON

?rnorm #normal distribution, with mean and sd
?dnorm ##normal probability density, using mean, sd (at a point)
?pnorm ## cumulative distribution function, for normal dist
?rpois ## generate random Poisson variables with given rate

## FOUR FUNCTIONS ASSOCIATED WITH PROBABILITY DISTRIBUTION
## (Not R functions, as I just found out)

?d #density
?r #random number generation
?p #cumulative distribution
?q #quantile function

## Each distribution has the 4 functions

?rnorm;?dnorm;?pnorm;qnorm
?rgamma;?dgamma;?pgamma;?qgamma
?rpois;?dpois;?ppois;?qpois

## Working with the normal distribution requires using
## these 4 functions

str(rnorm) #function (n, mean = 0, sd = 1)  
str(pnorm) #function (q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
str(qnorm) #function (p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) 
str(dnorm) #function (x, mean = 0, sd = 1, log = FALSE)

## If phi is cum for standard normal, pnorm(q) = phi(q)
## and qnorm(p) = phi^-1 (p)

## default value for standard normal is mean=0,sd=1
##lower.tail = false will evaluate just upper tail
## log.p to log scale it?

## how to do the shit
x <- rnorm(10) #num of variables to generate
x <- rnorm(10,20,2) #mean 20, sd 2
summary(x)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  15.06   18.19   20.21   20.16   21.40   24.79 
'

##set the seed for rng (appearance of randomness, consistent)
set.seed(1) ##pass integer to seed
rnorm(5)
## [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
## should be same as his
rnorm(5)
## [1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884
## different, but same same?
get.seed() ##lol nice try
set.seed(1) ##set seed again
rnorm(5)
## [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
set.seed(2) ##it's not 2, it's some other one
set.seed(1)

##always set the seed when conducting simulation


## POISSON DATA

str(rpois) #function (n, lambda) 
str(dpois) #function (x, lambda, log = FALSE)  
str(ppois) #function (q, lambda, lower.tail = TRUE, log.p = FALSE)
str(qpois) #function (q, lambda, lower.tail = TRUE, log.p = FALSE)

## Poisson variables all integers
rpois(10,1)## [1] 3 0 1 0 0 1 0 1 2 0
rpois(10,2)## [1] 2 2 2 1 3 2 3 0 3 2
rpois(10,20)## [1] 24 23 20 11 22 24 16 17 18 17
## mean = rate (more or less)
pp <- rpois(10,20)
summary(pp)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   13.0    18.0    20.0    20.4    23.5    27.0 
'

## Cumulative Distribution
ppois(2,2) ## Pr(x <= 2) [1] 0.6766764
ppois(4,2) ## Pr(x <= 4) [1] 0.947347
ppois(6,2) ## Pr(x <= 6) [1] 0.9954662

## Messing Around With Normies
pnorm(12,10,2) #[1] 0.8413447
pnorm(12,10,1) #[1] 0.9772499
pnorm(12,10,4) #[1] 0.6914625

setwd('~/Github/R2D2')


## Simulating a Linear Model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
summary(y)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-6.4084 -1.5402  0.6789  0.6893  2.9303  6.5052 
'
plot(x,y)

## Example 2 -- A Binary Random Variable [binomial dist]
set.seed(10)
x <- rbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
summary(y)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-3.4936 -0.1409  1.5767  1.4322  2.8397  6.9410 
'
plot(x,y)
## n=1, p=0.5

## Example 3 -- Poisson
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x ##beta1; beta2 (linear predictor log)
y <- rpois(100,exp(log.mu)) ##error model is poisson (mean from exp)
summary(y)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    1.00    1.00    1.55    2.00    6.00
'
plot(x,y) ## counts


