## PHYSICS

## X = X0 + V0*T + (1/2)A*T^2




disp <- function(t,x0=0,v0=0,a=-9.81){
        x <- x0 + v0*t + 0.5*a*t^2
        return(x)
}

drop_time <- function(distance,g=-9.81){
        t <- sqrt(-2*g*distance)/-g
        return(t)
}



vt <- function(h,g=-9.81){
        vt <- sqrt(-2*g*h)
        return(vt)
}

vt_mph <- function(h_inches,g=-9.81){
        h <- .0254*h_inches
        vt <- sqrt(-2*g*h)
        vt_mph <- 2.236936*vt
        return(vt_mph)
}

ke <- function(mass,velocity){
        kek <- 0.5*mass*velocity^2
        return(kek)
}