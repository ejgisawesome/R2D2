rm(list = ls())
library(datasets)
data(iris)
?iris

lapply(iris,summary)
lapply(split(iris,iris$Species),summary)

apply(iris[, 1:4],2,mean)
apply(iris,2,mean)

data(mtcars)
?mtcars

lapply(mtcars,mean)
sapply(mtcars,cyl,mean)
tapply(mtcars$mpg,mtcars$cyl,mean)
split(mtcars,mtcars$cyl)
tapply(mtcars$cyl,mtcars$mpg,mean)
mean(mtcars$mpg,mtcars$cyl)
apply(mtcars,2,mean)
with(mtcars,tapply(mpg,cyl,mean))
sapply(split(mtcars$hp,mtcars$cyl),mean)
x <- sapply(split(mtcars$hp,mtcars$cyl),mean)
x
x[3,2]-x[1,2]
x[3]
x[3]-x[1]

debug(ls)
ls()
