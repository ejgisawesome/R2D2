## DEBUGGING LESSONS

## INDICATIONS

## message
## warning
##error ##stops executing function
## condition

?message
?warning
?stop

#generate warning on purpose
log(-1)
'
Warning message:
In log(-1) : NaNs produced
'

#invisible(x) turns off auto printing
?invisible

printmessage <- function(x) {
        if(x>0)
                print("x is greater than zero")
        else
                print("x is less than or equal to zero")
        invisible(x)
}

#load saved datasets
?load

printmessage(1)
## [1] "x is greater than zero"
printmessage(NA)
'
Error in if (x > 0) print("x is greater than zero") else print("x is less than or equal to zero") : 
  missing value where TRUE/FALSE needed
'

#fixed function
printmessage2 <- function(x) {
        if(is.na(x))
                print("x is a missing value!")
        else if(x>0)
                print("x is greater than zero")
        else
                print("x is less than or equal to zero")
        invisible(x)
}

printmessage2(x)
'
[1] "x is greater than zero"
Warning messages:
1: In if (is.na(x)) print("x is a missing value!") else if (x > 0) print("x is greater than zero") else print("x is less than or equal to zero") :
  the condition has length > 1 and only the first element will be used
2: In if (x > 0) print("x is greater than zero") else print("x is less than or equal to zero") :
  the condition has length > 1 and only the first element will be used
'

## BASIC TOOLS

?traceback
?debug #execute one line at a time, find shit in browser
?browser #suspend function at a point, not the top
?trace #insert code into function at a specific place (call to browser()?)
?recover #related to traceback; modify error behavior to browse fct. call stack

## USING TOOLS

mean(x)
traceback()

lm(y-x)
traceback()
debug(lm)
lm(y-x)

# swirl LAPPLY AND SAPPLY / VAPPLY AND TAPPLY