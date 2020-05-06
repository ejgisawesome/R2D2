rm(list=ls())

## Introductory Statistics With R

## Chapter 1
## Basics


## 1.1 First Steps


## 1.1.1 Overgrown Calculator

2+2
exp(-2)
rnorm(15)


## 1.1.2 Assignments

x <- 2
x
x+x
# variable can't start with a digit, other than that go wild


## 1.1.3 Vectorized Arithmetic
weight <- c(60,72,57,90,95,72)
weight
#can do vector calculations if same length
height <- c(1.75,1.80,1.65,1.90,1.74,1.91)
bmi <- weight/height^2

#mean, stdev
sum(weight)
sum(weight)/length(weight)
xbar <- sum(weight)/length(weight)

weight - xbar
(weight - xbar)^2

sdev <- sqrt(sum((weight - xbar)^2)/(length(weight) - 1))

#but that shit's in there already, soooo
mean(weight)
sd(weight)           


## 1.1.4 Standard Procedures

## use t-test to assume an average for BMI
?t.test
t.test(bmi, mu=22.5) ## mu defaults to 0 if not given


## 1.1.5 Graphics

plot(height,weight)  ##makes scatterplot
hh <- c(1.65,1.70,1.75,1.80,1.85,1.90)
lines(hh,22.5 * hh^2) ##BMI test plot, superimposed


## 1.2 R Language Essentials

