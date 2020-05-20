'Looking at Data
Simulation
Base Graphics
'


library(swirl)

## LOOKING AT DATA (where were we)

ls()
class(plants)
dim(plants) ##rows and columns
nrow(plants)
ncol(plants)
object.size(plants)
names(plants) ##variable names (names of each column)
head(plants)
head(plants,10)
tail(plants,15)
summary(plants)
table(plants$Active_Growth_Period)
str(plants)


## SIMULATION

?sample
sample(1:6,4,replace=TRUE) ##roll dice 4 times
'
| sample(1:6, 4, replace = TRUE) instructs R to randomly select four numbers
| between 1 and 6, WITH replacement. Sampling with replacement simply means that
| each number is "replaced" after it is selected, so that the same number can
| show up more than once. This is what we want here, since what you roll on one
| die shouldn'#t affect what you roll on any of the others.
'
sample(1:20,10) ##replace=FALSE is default

'
#LETTERS
#[1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
#[20] "T" "U" "V" "W" "X" "Y" "Z"

sample(LETTERS) ##26 letters scrambled

'
Now, suppose we want to simulate 100 flips of an unfair two-sided coin. This
| particular coin has a 0.3 probability of landing 'tails' and a 0.7 probability
| of landing 'heads'.

| Let the value 0 represent tails and the value 1 represent heads. Use sample()
| to draw a sample of size 100 from the vector c(0,1), with replacement. Since
| the coin is unfair, we must attach specific probabilities to the values 0
| (tails) and 1 (heads) with a fourth argument, prob = c(0.3, 0.7). Assign the
| result to a new variable called flips.
'
flips <- sample(c(0,1),100,replace=TRUE,prob=c(0.3,0.7))
sum(flips) ##finds probability of unfair flip landing (72 this time)

?rbinom

> rbinom(1,size=100,prob=0.7) ##number of heads in unfair coin flip
flips2 <- rbinom(100,size=1,prob=0.7) ##all the flips as 1 and 0
sum(flips2) ##69

?rpois
rpois(5,10) #5 numbers, average of 10
replicate(100,rpois(5,10)) #100 groups of them, makes a matrix
cm <- colMeans(my_pois) #mean of each column, stored in vector
hist(cm) #plots a histogram (bar graph with frequency of each number)
#Central Limit Theorem?
'
| All of the standard probability distributions are built into R, including
| exponential (rexp()), chi-squared (rchisq()), gamma (rgamma()), .... Well, you
| see the pattern.

'

## BASE GRAPHICS

'
| We do not cover the more advanced portions of graphics in R in this lesson.
| These include lattice, ggplot2 and ggvis.

There is a school of thought that this approach is backwards, that we should
| teach ggplot2 first. See
| http://varianceexplained.org/r/teach_ggplot2_to_beginners/ for an outline of
| this view.

| Before plotting, it is always a good idea to get a sense of the data. Key R
| commands for doing so include, dim(), names(), head(), tail() and summary().

'
data(cars)
plot(cars)
'
As always, R tries very hard to give you something sensible given the
| information that you have provided to it. First, R notes that the data frame
| you have given it has just two columns, so it assumes that you want to plot
| one column versus the other.

| Second, since we do not provide labels for either axis, R uses the names of
| the columns. Third, it creates axis tick marks at nice round numbers and
| labels them accordingly. Fourth, it uses the other defaults supplied in
| plot().

'
## Plot is short for scatterplot, btw
'
| The help page for plot() highlights the different arguments that the function
| can take. The two most important are x and y, the variables that will be
| plotted. For the next set of questions, include the argument names in your
| answers. That is, do not type plot(cars$speed, cars$dist), although that will
| work. Instead, use plot(x = cars$speed, y = cars$dist).


'
plot(x = cars$speed, y = cars$dist)

'
 Note that this produces a slightly different answer than plot(cars). In this
| case, R is not sure what you want to use as the labels on the axes, so it just
| uses the arguments which you pass in, data frame name and dollar signs
| included.

| Note that there are other ways to call the plot command, i.e., using the
| "formula" interface. For example, we get a similar plot to the above with
| plot(dist ~ speed, cars). However, we will wait till later in the lesson
| before using the formula interface.

'
plot(cars$dist,cars$speed) #flipped it
plot(x=cars$speed,y=cars$dist,xlab="Speed")
plot(x=cars$speed,y=cars$dist,xlab="Speed",ylab="Stopping Distance") #wrong?
plot(cars,main= "My Plot")
plot(cars, sub = "My Plot Subtitle")

?par #see the shitload of possible arguments
?points #change shape of data points in scatterplot
plot(cars,col=2) #makes them red
plot(cars,xlim=c(10,15)) #only plots that range
plot(cars,pch=2) #makes them triangles

#this shit blows use ggplot2
#but good to know the basics of it
#also there's one called lattice?

#boxplots
data(mtcars)
'
Anytime that you load up a new data frame, you should explore it before using
| it. In the middle of a swirl lesson, just type play(). This temporarily
| suspends the lesson (without losing the work you have already done) and allows
| you to issue commands like dim(mtcars) and head(mtcars). Once you are done
| examining the data, just type nxt() and the lesson will pick up where it left
| off.

Probably would have been nice to know that shit.
'
?boxplot
'
Instead of adding data columns directly as input arguments, as we did with
| plot(), it is often handy to pass in the entire data frame. This is what the
| "data" argument in boxplot() allows.

...

  |==============================================================         |  87%
| boxplot(), like many R functions, also takes a "formula" argument, generally
| an expression with a tilde ("~") which indicates the relationship between the
| input variables. This allows you to enter something like mpg ~ cyl to plot the
| relationship between cyl (number of cylinders) on the x-axis and mpg (miles
| per gallon) on the y-axis.

'
boxplot(formula=mpg~cyl,data=mtcars)
## looks sexier than typical scatterplot
hist(mtcars$mpg) #histograms useful

'
 In this lesson, you learned how to work with base graphics in R. The best
| place to go from here is to study the ggplot2 package. If you want to explore
| other elements of base graphics, then this web page
| (http://www.ling.upenn.edu/~joseff/rstudy/week4.html) provides a useful
| overview.
'
