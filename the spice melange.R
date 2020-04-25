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

data <- read.Table("sample.txt") #read its help page

#colClasses (speed up formula)
initial <- read.table("datatable.txt",nrows=100)
classes <- supply(initial,class)
tabAll <- read.table("datatable.txt",colClasses = classes)

#know: how much RAM you got? what else is open? what 0S? 64-bit?

#back of a napkin calc
#144 billion bytes (150 mil rows X 120 columns or whatevs) / 2^20 = 1373 MB = 1.34 GB (/2^10)

#textual formats (dumping and dput())
#don't have to specify the class, it's in metadata

#dput
y <- data.frame(a=1,b="a")
dput(y)
dput(y,file="dput.R")
new.y <- dget("dput.R")

#dump
x1 <- "shite"
y1 <- data.frame(a=1,b="a")
dump(c("x","y"),file = "dumpslikeatruck.R")
rm(x1,y1)
source("dumpslikeatruck.R")
rm(m,new.y,y,fx,msg,x)

#Interfaces to the Outside World
file()
gzfile()
bzfile()
url()

# str(file)
#function (description = "", open = "", blocking = TRUE, encoding = getOption("encoding"), raw = FALSE, method = getOption("url.method", 
#                                                                        "default"))  
 
#Connections to Read Parts of A File (sample)
con <- gzfile("words.gz")
x <- readLines(con,10)

#This might take time?
con <- url("http://www.jhsph.edu" , "r")
x <- readLines(con)
head(x)

#Subsetting [] [[]] $
x <- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"] #letters have an order
u <- x > "a"
u
x[u]

#Subsetting Lists
y <- list(fu=1:4,bar=0.6,rack="hello")
y[1]
y[[1]]
rm(x)
rm(con,u)
y[1]
y$bar
y["bar"]
y[["bar"]]
y[c(1,3)]
name <- "fu"
y[[name]] #finds it
y$name #takes it literally
y$fu #must be exact

#something or other, not important
x <- list(a = list(10,12,14),b=c(3.14159,2))
x[[c(1,3)]]

#Matrices
x <- matrix(1:6,2,3)
x[1,2]
x[2,1]
x[2,]
x[,3]
x
#to get 1X1 matrix instead of vector of length 1, drop=FALSE
x[1,2,drop=FALSE]
x[1,2]
#same for a whole row or column
x[1,,drop=FALSE]

#Partial Matching (done by $, [[]] you have to tell it exact=FALSE)
x <- list(fart=1:5)
x$a
x$f
x[["f"]]
x[["f",exact=FALSE]]

