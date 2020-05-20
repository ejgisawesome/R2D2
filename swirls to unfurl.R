## WEEK 4 QUIZ
rm(list=ls())
set.seed(1)
rpois(5,2)


set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e

## 90%

swirl()
library(swirl)

## YOUR SWIRLS ARE...
'
Looking at Data
Simulation
Base Graphics
'

## LOOKING AT DATA
ls()
class()
dim()
nrow()
ncol()
object.size() #space occupied in memory
names(plants)
head(plants)
head(plants,10)
tail(plants,15)
table(plants$Active_Growth_Period)
str(plants)

## SIMULATION

