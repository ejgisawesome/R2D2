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


## 1.2.1 Expressions and Objects


## 1.2.3 Vectors

#character vectors
c('Huey','Dewey','Louie') #single quotes ok
c("Huey","Dewey","Louie") #double quotes ok

#logical vectors
c(T,T,F,T)
bmi<25


#1.2.4 Quoting and Escape Sequences

#concatenate to get rid of quote
cat(c("Huey","Dewey","Louie"))
#new line character if you're not on RStudio is "/n"
#but why wouldn't you be?


#1.2.6 Functions That Create Vectors

# c, seq, rep
?c ; ?seq ; ?rep

# c - concatenate
x <- c(1,2,3)
y <- c(10,20)
c(x,y,5)

#can name each element if you want
x <- c(red="Huey",blue="Dewey",green="Louie")
x
names(x) #RBG

#vectors have same type; concat converts to least restrictive
c(FALSE,3) #0 3
c(pi,'abc') #"pi as a string" "abc
c(FALSE,'abc') #"FALSE" "abc"

#seq - sequence

seq(4,9) #4 5 6 7 8 9

#up by 2
seq(4,10,2) #4 6 8 10

#good vector for graphics, setting x & y axis and shit
hhs <- seq(1.65,1.90,.05)

#sequence is same as colon
4:9
4:10:2 #this is an error though

#rep - replicate

oops <- c(7,9,13)
# second argument can be vector or single number (what it do?)
rep(oops,3)
#7  9 13  7  9 13  7  9 13
rep(oops,1:3)
#7  9  9 13 13 13

#useful for group codes (10 men, 15 women, etc)
rep(1:2,c(10,15)) #simple as that
#1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

#Special Case: equal replications of each value
rep(1:2,each=10)


## 1.2.7 Matrices and Arrays

# Matrix = 2D array of numbers
#Book don't wanna do matrix operations

x <- 1:12
dim(x) <- c(3,4)
x #down the column

matrix(1:12,nrow=3,byrow=T) #down the row

#rownames, colnames, t (transpose)
x <- matrix(1:12,nrow=3,byrow=T)
rownames(x) <- LETTERS[1:3] #wtf is LETTERS (contains capitals A-Z)
x
'
  [,1] [,2] [,3] [,4]
A    1    2    3    4
B    5    6    7    8
C    9   10   11   12
'
t(x) #transpose
'
     A B  C
[1,] 1 5  9
[2,] 2 6 10
[3,] 3 7 11
[4,] 4 8 12
'
# Other useful vectors: letters, month.name, month.abb

#cbind & rbind to join vectors

cbind(A=1:4,B=5:8,C=9:12)
'
     A B  C
[1,] 1 5  9
[2,] 2 6 10
[3,] 3 7 11
[4,] 4 8 12
'
rbind(A=1:4,B=5:8,C=9:12)
'
  [,1] [,2] [,3] [,4]
A    1    2    3    4
B    5    6    7    8
C    9   10   11   12
'

## 1.2.8 Factors

# data structure that names categories, other stuff too

pain <- c(0,3,2,2,1) #pain level of five patients
fpain <- factor(pain,levels=0:3) #categorical variable (factor)
levels(fpain) <- c("none","mild","medium","severe") #description
fpain
'
[1] none   severe medium medium mild  
Levels: none mild medium severe
'
as.numeric(fpain) #extract coding, starting from 1
# [1] 1 4 3 3 2
levels(fpain)
# [1] "none"   "mild"   "medium" "severe"

# ordered factors: ignore them?


## 1.2.9 Lists


intake.pre <- c(5260,5470,5640,6180,6390,
                + 6515,6805,7515,7515,8230,8770) #it works with the + it's ok
 intake.post <- c(3910,4220,3885,5160,5645,
                   + 4680,5265,5975,6790,6900,7335)
 
 #combine vectors into a list
 mylist <- list(before=intake.pre,after=intake.post)
mylist 
'
$before
 [1] 5260 5470 5640 6180 6390 6515 6805 7515 7515 8230 8770

$after
 [1] 3910 4220 3885 5160 5645 4680 5265 5975 6790 6900 7335
'

#extract named components with $

mylist$before
#  [1] 5260 5470 5640 6180 6390 6515 6805 7515 7515 8230 8770


## 1.2.10 DATA FRAMES

# data matrix / data set

d <- data.frame(intake.pre,intake.post)
d
'
   intake.pre intake.post
1        5260        3910
2        5470        4220
3        5640        3885
4        6180        5160
5        6390        5645
6        6515        4680
7        6805        5265
8        7515        5975
9        7515        6790
10       8230        6900
11       8770        7335
'
#notice data is now paired, components also access with $

d$intake.pre
#  [1] 5260 5470 5640 6180 6390 6515 6805 7515 7515 8230 8770


## 1.2.11 Indexing

intake.pre[5] #get individual elements
#[1] 6390

#you can also make it left hand of assignment to modify
intake.pre[5] <- 6390 #but I can't tell wtf I did in this example

#index several things with vectors
intake.pre[c(3,5,7)]
# [1] 5640 6390 6805

intake.pre[3,5,7] #specify indexing into a 3D array, not what you want

#can store vector into a variable and it still works
v <- c(3,5,7)
intake.pre[v]
# [1] 5640 6390 6805

#index a sequence
intake.pre[1:5]
# [1] 5260 5470 5640 6180 6390

#exclusion with - sign
intake.pre[-c(3,5,7)]
# [1] 5260 5470 6180 6515 7515 7515 8230 8770
# can't mix + and - indices


# 1.2.12 Conditional Selection

intake.post[intake.pre > 7000] #square brackets for conditions
# [1] 5975 6790 6900 7335
# variables related must have same length as indexed
# >;<;=;<=;>=;!=

# logical operators to combine expressions

intake.post[intake.pre > 7000 & intake.pre <= 8000]
# [1] 5975 6790

# && || flow control AND OR

intake.pre > 7000 & intake.pre <= 8000
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE

# for missing values, will appear in vector, as NA
is.na(x) #missing number function


## 1.2.13 Indexing of Data Frames

# data frame that uses matrix notation

d <- data.frame(intake.pre,intake.post)
d[5,1]
# [1] 6390
d[5,]
'
  intake.pre intake.post
5       6390        5645
'
d[2] #without comma you get 2nd column
d[d$intake.pre>7000,] #prove you weren't paying attention lol
'
   intake.pre intake.post
8        7515        5975
9        7515        6790
10       8230        6900
11       8770        7335
'

#member the commas?

#divide what just happened into steps
sel <- d$intake.pre>7000
sel # [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
d[sel,] #same answer

# looking at first few cases with indexing
d[1:2,]
'
  intake.pre intake.post
1       5260        3910
2       5470        4220
'

#there's a function for that called head that gives first six
head(d)
'
  intake.pre intake.post
1       5260        3910
2       5470        4220
3       5640        3885
4       6180        5160
5       6390        5645
6       6515        4680
'
tail(d) #also tail for last 6
'
   intake.pre intake.post
6        6515        4680
7        6805        5265
8        7515        5975
9        7515        6790
10       8230        6900
11       8770        7335
'


## 1.2.14 Grouped data and data frames

# a data set in book of energy expended [,1] by lean and obese women [,2]

# exp.lean <- energy$expend[energy$stature=="lean"]
# exp.obese <- energy$expend[energy$stature=="obese"]

# Alternately: split function splits by grouping

# l <- split(energy$expend, energy$stature)
# 1
'
$lean
[1] 7.53 7.48 8.08 8.09 10.15 8.40 10.88 6.13 7.90 7.05
[11] 7.48 7.58 8.11
$obese
[1] 9.21 11.51 12.79 11.85 9.97 8.79 9.69 9.68 9.19
'


## 1.2.15 Implicit Loops

# lapply, sapply
# lapply returns list; sapply tries to simplify result to vector/matrix

'
uncoded code from book wtf

> lapply(thuesen, mean, na.rm=T)
$blood.glucose
[1] 10.3
$short.velocity
[1] 1.325652
> sapply(thuesen, mean, na.rm=T)  #second arg is function
blood.glucose short.velocity
10.300000 1.325652

'
na.rm=T #removes missing values, third arg

#replicate: count and expression to evaluate?
replicate(10,mean(rexp(20)))
'
 [1] 0.7269290 0.9566678 0.7274364 0.9845057 1.1703192 
 0.8767611 1.0848362 0.8301587 1.2737121
[10] 0.9481697
'
?rexp #exponential distribution
m <- matrix(rnorm(12),4)
m
'
            [,1]       [,2]        [,3]
[1,] -0.99215916 -0.9081361  0.51313995
[2,] -0.02054237 -2.7205381  1.28936618
[3,] -0.25715517 -0.4278300  0.98486600
[4,] -0.54067592  1.0994275 -0.01486904
'
?rnorm #normal distribution

tapply #create tables
tapply(energy$expend,energy$stature,median) #no code brah
# gets the answer tho


## 1.2.16 Sorting

intake <- data.frame(pre=intake.pre,post=intake.post) #I DID THIS!
intake$post
#  [1] 3910 4220 3885 5160 5645 4680 5265 5975 6790 6900 7335
sort(intake$post)
# [1] 3885 3910 4220 4680 5160 5265 5645 5975 6790 6900 7335
#intake$pre already sorted btw

#sort series of variables according to another variable
order(intake$post)
# [1]  3  1  2  6  4  7  5  8  9 10 11

o <- order(intake$post)
intake$post[o]
# [1] 3885 3910 4220 4680 5160 5265 5645 5975 6790 6900 7335
intake$pre[o]
#  [1] 5640 5260 5470 6515 6180 6805 6390 7515 7515 8230 8770

#can sort whole data frame too
intake.sorted <- intake[o,]
intake.sorted
'
    pre post
3  5640 3885
1  5260 3910
2  5470 4220
6  6515 4680
4  6180 5160
7  6805 5265
5  6390 5645
8  7515 5975
9  7515 6790
10 8230 6900
11 8770 7335
'


## 1.3 Exercises To Fuck With Your Head

'
1.1 How would you check whether two vectors are the same if they
may contain missing (NA) values? (Use of the identical function is
considered cheating!)
1.2 If x is a factor with n levels and y is a length n vector, what happens
if you compute y[x]?
1.3 Exercises 29
1.3 Write the logical expression to use to extract girls between 7 and 14
years of age in the juul data set.
1.4 What happens if you change the levels of a factor (with levels) and
give the same value to two or more levels?
1.5 On p. 27, replicate was used to simulate the distribution of the
mean of 20 random numbers from the exponential distribution by repeating the operation 10 times. How would you do the same thing with
sapply?
'


## Chapter 2
## The R Environment


## 2.1 Session management

## 2.1.1 The Workspace


ls()  #all the shit you got open rn
'
 [1] "bmi"           "d"             "fpain"         "height"        "hh"           
 [6] "hhs"           "intake"        "intake.post"   "intake.pre"    "intake.sorted"
[11] "m"             "mylist"        "o"             "oops"          "pain"         
[16] "sdev"          "sel"           "v"             "weight"        "x"            
[21] "xbar"          "y"          
'

rm(height,weight) #take off too
rm(list=ls()) #clear that whole shit
save.image() #save workspace

## 2.1.2 Textual Output


