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


#WEEK 1 NOTES
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

#Removing Missing Values (Multiple)
x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
x[!bad]
y <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(x,y) #beast function
good

#Vectorized Operations
x <- 1:4; y <- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y

#Matrix
x<-matrix(1:4,2,2)
y<- matrix(rep(10,4),2,2)
x*y #Element-wise Multiplication
x/y #same thing
x %*% y #Matrix Multiplication
x %/% y

#Swirl
install.packages("swirl")
packageVersion("swirl")
library(swirl)
install_from_swirl("R Programming")
swirl()

#| You can exit swirl and return to the R prompt (>) at any time by
#| pressing the Esc key. If you are already at the prompt, type bye() to
#| exit and save your progress. When you exit properly, you'll see a
#| short message letting you know you've done so.

#| When you are at the R prompt (>):
#  | -- Typing skip() allows you to skip the current question.
#| -- Typing play() lets you experiment with R on your own; swirl will
#| ignore what you do...
#| -- UNTIL you type nxt() which will regain swirl's attention.
#| -- Typing bye() causes swirl to exit. Your progress will be saved.
#| -- Typing main() returns you to swirl's main menu.
#| -- Typing info() displays these options again.

#| Let's get started!

#WEEK 2 NOTES

#Control Sturctures
#if,else:
#for:
#while:
#repeat:
#break:
#next:
#return:


#for loops
x<-c("a","b","c","d")
#version1
for(i in 1:4){
  print(x[i])
}
#version2
for(i in seq_along(x)){
  print(x[i])
}
#version3
for(letter in x){
  print(letter)
}
#version4
for(i in 1:4) print(x[i])

#nesting (hard to read)
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#while loops (watch for Inf)
count<- 0
while(count<10){
  print(count)
  count <- count+1
}

z<-5;count=0

while(z >= 3 && z <=10){
  print(z)
  count <- count+1
coin <- rbinom(1,1,0.5)
if (coin ==1){ ##random walk
  z<-z+1
}else{
  z<-z-1
}

}

#Repeat (Inf loop unless break)

#next (skips iterations in for loops)

