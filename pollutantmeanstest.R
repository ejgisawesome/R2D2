#home
directory <- '~/specdata'

#this didn't work
install.packages('devtools')
library(devtools)
wd(directory)

#set the directory properly this way
?setwd
setwd(directory)
setwd('~/GitHub/R2D2')
getwd()
read.csv('001.csv')
