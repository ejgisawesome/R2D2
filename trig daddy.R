asind <- function (a1,a2){
        asin(a1/a2)*(180/pi)
}

acosd <- function(a1,a2){
        acos(a1/a2)*(180/pi)
}

atand <- function(a1,a2){
        atan(a1/a2)*(180/pi)
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