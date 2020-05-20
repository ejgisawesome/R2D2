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
