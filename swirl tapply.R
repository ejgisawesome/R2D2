install.packages('plyr')
library(swirl)
swirl()

## VAPPLY explicitly states result type

'
  |=============                           |  32%
| Try vapply(flags, unique, numeric(1)), which
| says that you expect each element of the result
| to be a numeric vector of length 1. Since this
| is NOT actually the case, YOU WILL GET AN
| ERROR. Once you get the error, type ok() to
| continue to the next question.

> vapply(flags,unique,numeric(1))
Error in vapply(flags, unique, numeric(1)) : values must be length 1,
 but FUN(X[[1]]) result is length 194
'

'
  |================                        |  40%
| If we wish to be explicit about the format of
| the result we expect, we can use vapply(flags,
| class, character(1)). The 'character(1)'
| argument tells R that we expect the class
| function to return a character vector of length
| 1 when applied to EACH column of the flags
| dataset. Try it now.

> vapply(flags,class,character(1))
      name   landmass       zone       area 
  "factor"  "integer"  "integer"  "integer" 
population   language   religion       bars 
 "integer"  "integer"  "integer"  "integer" 
   stripes    colours        red      green 
 "integer"  "integer"  "integer"  "integer" 
      blue       gold      white      black 
 "integer"  "integer"  "integer"  "integer" 
    orange    mainhue    circles    crosses 
 "integer"   "factor"  "integer"  "integer" 
  saltires   quarters   sunstars   crescent 
 "integer"  "integer"  "integer"  "integer" 
  triangle       icon    animate       text 
 "integer"  "integer"  "integer"  "integer" 
   topleft   botright 
  "factor"   "factor" 

| You are quite good my friend!

  |==================                      |  44%
| Note that since our expectation was correct
| (i.e. character(1)), the vapply() result is
| identical to the sapply() result -- a character
| vector of column classes.

'
'
| If you take the arithmetic mean of a bunch of 0s and 1s, you get
| the proportion of 1s. Use tapply(flags$animate, flags$landmass,
| mean) to apply the mean function to the 'animate' variable
| separately for each of the six landmass groups, thus giving us
| the proportion of flags containing an animate image WITHIN each
| landmass group.

> tapply(flags$animate, flags$landmass, mean)
        1         2         3         4         5         6 
0.4193548 0.1764706 0.1142857 0.1346154 0.1538462 0.3000000 
'
#| Perseverance, that's the answer.

#|==============================          |  76%
#| The first landmass group (landmass = 1) corresponds to North
#| America and contains the highest proportion of flags with an
#| animate image (0.4194).

'
'
