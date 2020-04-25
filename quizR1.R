rm(x,y)

x <-c(4,"a",TRUE)
X
x
x <- 4L
is(x)
class(x)

x<- c(1,3,5)
y<- c(3,2,10)
cbind(x,y)

x<-list(2,"a","b",TRUE)
x<-1:4;y<-2:3
x+y
class(x+y)

x <- c(3,5,1,10,12,6)
x[x<6] <- 0
x
x[x<6]==0
x[x<=5]<-0
x

read.csv("hw1_data.csv")
hw<-"hw1_data.csv"
readLines(hw,3)
data.frame(hw,check.rows = TRUE)
data.frame(hw)
readLines(hw,151:154)
readLines(hw,152,153)
readLines(hw,[152])
install.packages("n")
readLines(hw,)

install.packages("reader")
library(reader)
n.readLines(hw,n=153,skip=151)
check.rows(hw)
n.readLines(hw,n=48)
readLines(hw,48)
data.frame(hw,2,2)
hw

clim<- read.table(hw)
read.table(hw)
clim<-read.csv(hw)
clim[2,]
nrows(clim)
rowsum(clim)
clim[47]
clim[47,]
clim[152:153,]
clim[,1]
ozone<-clim[,1]
is.na(ozone)
is.na.data.frame(ozone)
mean(ozone)
summary(ozone)

summary(clim)
clim[,4 <=90]<-NA

june <- (clim[,5] = 6)
june

read.csv()
clim
rm(clim2)
mean(clim[32:61,4])
clim

boundary <- clim$Ozone > 31 && clim$Temp > 90

clim[clim$Ozone >= 32]
clim
str(clim[NA])

clim[clim$Month == 6,]
clim
b1 <- clim[clim$Ozone > 31 && clim$Ozone == "integer",]
b1

clim
clim[clim$Ozone > 31 && clim$Temp > 90,]
clim
rm(boundary,good,b1)
rm(x,june)
str(clim[NA])
clim[clim$Ozone > 31 & clim$Temp > 90,]
clim[is.na(clim)]<-0
hazzard <-  clim[clim$Ozone > 31 & clim$Temp > 90,]
hazzard[2,]
hazzard[,2]
mean(hazzard[,2])
mayday <- clim[clim$Month == 5,]
max(mayday)
max(mayday[,1])
