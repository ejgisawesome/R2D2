asind <- function (o,h){
        asin(o/h)*(180/pi)
}

acosd <- function(a,h){
        acos(a/h)*(180/pi)
}

atand <- function(o,a){
        atan(o/a)*(180/pi)
}

sind <- function(x){
        sin(x*(pi/180))
}

cosd <- function(x){
        cos(x*(pi/180))
}

tand <- function(x){
        tan(x*(pi/180))
}

deg2rad <- function(d){
  r <- d * (pi/180)
 return(r)
}

rad2deg <- function(r){
  d <- r * (180/pi)
  return(d)
}