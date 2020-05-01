example <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7, 8), ncol = 3, nrow = 3)
example2 <- matrix(c(0, 1, 2, 3, 4, 5, 6, 7, 8), nrow = 3, ncol = 3)

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
m <- matrix(nrow = 3, ncol = 3) #example with NaN

#Matrix by dimension on vector
m <- 1:10
dim(m) <- c(2, 5)

#Matrix by column binding; row binding
x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)

#Factors (categorical data) Ordered or Unordered
#Like integer vector with each integer labeled (Male and Female > 1 and 2)
#lm() and glm() functions like factors

fx <-
  factor(c("yes", "yes", "yes", "no", "no"), levels = c("yes", "no"))

getwd()

#Missing Values
c <- c(1, 2, NaN, NA, 4)
is.na(c)
is.nan(c)

#Data Frames
read.table()
read.csv()
data.frame()

x <- data.frame(fu = 1:4, bar = c(T, T, F, F))

#Names Attribute
x <- 1:3
names(x) <- c("bulbasaur", "charmander", "squirtle")

x <- list(a = 1, b = 2, c = 3)

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))

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
initial <- read.table("datatable.txt", nrows = 100)
classes <- supply(initial, class)
tabAll <- read.table("datatable.txt", colClasses = classes)

#know: how much RAM you got? what else is open? what 0S? 64-bit?

#back of a napkin calc
#144 billion bytes (150 mil rows X 120 columns or whatevs) / 2^20 = 1373 MB = 1.34 GB (/2^10)

#textual formats (dumping and dput())
#don't have to specify the class, it's in metadata

#dput
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "dput.R")
new.y <- dget("dput.R")

#dump
x1 <- "shite"
y1 <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "dumpslikeatruck.R")
rm(x1, y1)
source("dumpslikeatruck.R")
rm(m, new.y, y, fx, msg, x)

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
x <- readLines(con, 10)

#This might take time?
con <- url("http://www.jhsph.edu" , "r")
x <- readLines(con)
head(x)

#Subsetting [] [[]] $
x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x > "a"] #letters have an order
u <- x > "a"
u
x[u]

#Subsetting Lists
y <- list(fu = 1:4, bar = 0.6, rack = "hello")
y[1]
y[[1]]
rm(x)
rm(con, u)
y[1]
y$bar
y["bar"]
y[["bar"]]
y[c(1, 3)]
name <- "fu"
y[[name]] #finds it
y$name #takes it literally
y$fu #must be exact

#something or other, not important
x <- list(a = list(10, 12, 14), b = c(3.14159, 2))
x[[c(1, 3)]]

#Matrices
x <- matrix(1:6, 2, 3)
x[1, 2]
x[2, 1]
x[2, ]
x[, 3]
x
#to get 1X1 matrix instead of vector of length 1, drop=FALSE
x[1, 2, drop = FALSE]
x[1, 2]
#same for a whole row or column
x[1, , drop = FALSE]

#Partial Matching (done by $, [[]] you have to tell it exact=FALSE)
x <- list(fart = 1:5)
x$a
x$f
x[["f"]]
x[["f", exact = FALSE]]

#Removing Missing Values (Multiple)
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y) #beast function
good

#Vectorized Operations
x <- 1:4
y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

#Matrix
x <- matrix(1:4, 2, 2)
y <- matrix(rep(10, 4), 2, 2)
x * y #Element-wise Multiplication
x / y #same thing
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
x <- c("a", "b", "c", "d")
#version1
for (i in 1:4) {
  print(x[i])
}
#version2
for (i in seq_along(x)) {
  print(x[i])
}
#version3
for (letter in x) {
  print(letter)
}
#version4
for (i in 1:4)
  print(x[i])

#nesting (hard to read)
x <- matrix(1:6, 2, 3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

#while loops (watch for Inf)
count <- 0
while (count < 10) {
  print(count)
  count <- count + 1
}

z <- 5
count = 0

while (z >= 3 && z <= 10) {
  print(z)
  count <- count + 1
  coin <- rbinom(1, 1, 0.5)
  if (coin == 1) {
    ##random walk
    z <- z + 1
  } else{
    z <- z - 1
  }
  
}

#Repeat (Inf loop unless break)

#next (skips iterations in for loops)

#Functions

#... (collects all arguments so you don't need to write them all) (first arg in paste())
? paste #see?
? cat #concatenate
#anything after ... can't be partially matched
paste("a", "b", sep = ":")
paste("a", "b", se = ":") #no typos

#Scoping Rules - Symbol Binding
lm <- function(x) {
  pi * x ^ 2
}
#lm function created (bound values to symbol; lm could be your function or stats one)
#environments -- searches environment for the value
lm(3)
lm(1)
search() #tells you where R looks for shit; #lm is in :stats, #1 .GlobalEnv

#Scoping Rules: lexical scoping OR static scoping
f <- function(x, y) {
  x ^ 2 + y / z #z is "free variable"
} #spoiler alert: error
#The values of free variables are searched for in the environment in which the function was defined.
#What is an environment? collection of (symbol,value) pairs...all have a parent unless empty
#function + environment = a closure OR function closure

#Lexical Scoping: if value of symbol not found, look in parent environment until top-level(global or namespace of package)
#At global level, search continues until the empty environment.  If not found, error.

#Why we need to know this?  well...
#R makes it possible to define functions inside other functions (return value can be a function!
#In that case, not defined in global environment.

make.power <- function(n) {
  pow <- function(x) {
    x ^ n
  }
  pow
}

cube <- make.power(3) #try it now
square <- make.power(2)
#Find the environment
ls(environment(cube))
get("n", environment(cube))
? ls #list objects

#Lexical Scoping Demo
y <- 10
f <- function(x) {
  y <- 2
  y ^ 2 + g(x)
}

g <- function(x) {
  x * y
}

f(3)#What is f(3)? 34. Why come? 2^2 + x*10
#value of y in g looked up in global:10 |
#calling environment is parent frame (2) used in dynamic scoping

#Let's confuse you.  (appearance of dynamic scoping but not really)
g <- function(x) {
  a <- 3
  x + a + y
}
g(2) #15.  y is still 10?  2+3+10.  Unless you clear it and don't define Y.
rm(list = ls()) #CLEAR ENVIRONMENT
y = 3

#Lexical Scoping Languages: Scheme, Perl, Python, Common Lisp
#(all languages converge to Lisp)
#Downsides: All objects must be stored in memory.
#All functions carry a pointer to their respective
#environments (which could be anywhere)

#OPTIMIZATION EXAMPLE

#Making a Constructor Function
make.NegLogLik <- function(data, fixed = c(FALSE, FALSE)) {
  params <- fixed
  function(p) {
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    a <- -0.5 * length(data) * log(2 * pi * sigma ^ 2)
    b <- -0.5 * sum((data - mu) ^ 2) / (sigma ^ 2)
    - (a + b)
  }
}
#Note: Optimization functions in R minimize functions,
#so you must use negative log-likelihood
#What does this all mean?
? optim
? nlm
? optimize

set.seed(1)
normals <- rnorm(100, 1, 2)
? rnorm
nLL <- make.NegLogLik(normals)
nLL
ls(environment(nLL))

#Estimating parameters
optim(c(mu = 0, sigma = 1), nLL)$par
#Fixing sigma=2
nLL <- make.NegLogLik(normals, c(FALSE, 2))
optimize(nLL, c(-1, 3))$minimum
#Fixing mu=1
nLL <- make.NegLogLik(normals, c(1, FALSE))
optimize(nLL, c(1e-6, 10))$minimum

#we good?

#how to plot shit
#mu plot?
nLL <- make.NegLogLik(normals, c(1, FALSE))
x <- seq(1.7, 1.9, len = 100)
y <- sapply(x, nLL)
plot(x, exp(-(y - min(y))), type = "l")
? plot #l is lines

#Negative Log Likelihood?  Still dunno what that is
#Plot type ="l" not "1"
#sigma plot?
nLL <- make.NegLogLik(normals, c(FALSE, 2))
x <- seq(.5, 1.5, len = 100)
y <- sapply(x, nLL)
plot(x, exp(-(y - min(y))), type = "l")

#Go to Preferences and Ctrl+I to indent your code.
#This is a text editor.  Curious.  I am very intelligent.
#Goddamn it apparently I'm a double spacing old fart wtf
#Anyway I don't think it's working.
#Ctrl+Shift+A?

#Dates and Times
?Date
#Times
?POSIXct
?POSIXlt
#Dates stored as # of days since 1970-01-01
#Time is # of seconds since 1970-01-01
x<- as.Date("1970-01-01")
unclass(x)
unclass(as.Date("1970-01-02"))
unclass(as.Date("2020-04-29"))
#Time
x<-Sys.time()
p<-as.POSIXlt(x) #class the time
names(unclass(p)) #extract classes
p$sec #where we at
#x is already in POSITct, unclass to get # of seconds
#strptime function in case dates are written different format
datestring<-c("January 10, 2012 10:40","December 9, 2011 9:10")
x<-strptime(datestring,"%B %d, %Y %H:%M") #make it match?
x
class(x)
?strptime #find the formatting strings

#Date and Time Operations
x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")
x-y
x<-as.POSIXlt(x)

#Takes into account leap years and time zones
x<-as.Date("2012-03-01");y<-as.Date("2012-02-28")
x-y
x<-as.POSIXct("2012-10-25 01:00:00")
y<-as.POSIXct("2012-10-25 06:00:00",tz="GMT")
y-x

#Aww shit here we go again
library(swirl)
rm(list=ls())
class(POSIXlt())

#advanced date time
install.packages('lubridate')
