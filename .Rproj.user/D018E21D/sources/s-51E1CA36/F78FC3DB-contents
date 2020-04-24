example <- matrix(c(0,1,2,3,4,5,6,7,8),ncol=3,nrow=3)
example2 <- matrix(c(0,1,2,3,4,5,6,7,8),nrow=3,ncol=3)

install.packages("ctv")

ctv::install.views("Econometrics")
ctv::install.views("MachineLearning")
ctv::install.views("DifferentialEquations")
ctv::install.views("Databases")
ctv::install.views("Finance")
ctv::install.views("gR")

#not how
source("https://bioconductor.org/biocLite.R")
#how
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.10")

ctv::install.views("Distributions")
ctv::install.views("Environmetrics")
install.packages("KernSmooth")

#open with lib function
library(KernSmooth)


#updates/old
old.packages()
update.packages()

#unload by checking box or by
detach("package:ggplot2", unload = TRUE)

#uninstall
remove.packages()

#check R version and loaded packages
sessionInfo()

#info
help(package = "ggplot2")
help(package = "devtools")

#more info
browseVignettes("ggplot2")

#recommended packages
# boot, class, cluster, codetools, foreign, KernSmooth, lattice, mgcv, nlme, rpart, survival, MASS, spatial, nnet, Matrix
#github desktop makes it easier

install.packages("boot")
install.packages("class")
install.packages("cluster")
install.packages("codetools")
install.packages("foreign")
install.packages("KernSmooth")
install.packages("lattice")
install.packages("mgcv")
install.packages("nlme")
install.packages("rpart")
install.packages("survival")
install.packages("MASS")
install.packages("spatial")
install.packages("nnet")
install.packages("Matrix")

vectors()
attributes()

##concatenate
c() 

#Explicit Coercion
as.numeric()
as.logical()
as.character()

#variety of objects
list()

#Matrices (a vector type)
m <- matrix(nrow=3,ncol=3) #example with NaN

#Matrix by dimension on vector
m <- 1:10
dim(m) <- c(2,5)

#Matrix by column binding; row binding
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

#Factors (categorical data) Ordered or Unordered
#Like integer vector with each integer labeled (Male and Female > 1 and 2)
#lm() and glm() functions like factors

fx <- factor(c("yes","yes","yes","no","no"),levels = c("yes","no"))

getwd()

#Missing Values
c <- c(1,2,NaN,NA,4)
is.na(c)
is.nan(c)

#Data Frames
read.table()
read.csv()
data.frame()

x <- data.frame(fu=1:4, bar=c(T,T,F,F))

#Names Attribute
x <- 1:3
names(x) <- c("bulbasaur","charmander","squirtle")

x <- list(a=1,b=2,c=3)

m <- matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))

#Read Data
read.table()
read.csv() #both for tabular data
readLines() #lines of text file
source() #reading in R code files
dget() #same (dput)
load() #saved workspaces
unserialize() #single R objects in binary

#Write Data
write.table()
writeLines()
dump()
dput()
save()
serialize()

#arguments for read.table
#file, header, sep, colClasses, nrows, comment.char, skip, stringsAsFactors
