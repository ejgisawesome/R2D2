## CONVERSIONS

## LBM -> KG
cvLb2kg <- function(lb){
        kilos <- lb * 0.45359237
        return(kilos)
}

# METERS PER SECOND -> MPH
cvMs2mph <- function(meters_per_second){
        mph <- 2.236936*meters_per_second
        return(mph)
}

# INCHES -> METERS
cvIn2M <- function(inches){
        meters <- .0254*inches
        return(meters)
}


## MM -> FEET
cvMM2ft <- function(mm){
        feet <- 0.00328084*mm
        return(feet)
}

# MM -> INCHES
cvMM2in <- function(mm){
        inches <- (1/25.4)*mm
        return(inches)
}

# INCHES -> MM
cvIn2mm <- function(inches){
  mm <- 25.4*inches
  return(mm)
}

# METERS -> FEET
cvM2ft <- function(metres){
  feet <- metres * (1/3.28084)
  return(feet)
}

# LITERS PER SECOND -> CFM
cvLs2cfm <- function(ls){
  cfm <- 35.3146662313*ls
  return(cfm)
}

# KILOWATTS -> HP
cvKw2hp <- function(kw){
  hp <- kw*1.341
  return(hp)
}