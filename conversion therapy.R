## CONVERSIONS

convertLb2kg <- function(lb){
        kilos <- lb * 0.45359237
        return(kilos)
}

convertMs2mph <- function(meters_per_second){
        mph <- 2.236936*meters_per_second
        return(mph)
}

convertIn2M <- function(inches){
        meters <- .0254*inches
        return(meters)
}

convertIn2mm <- function(inches){
  mm <- 25.4*inches
  return(mm)
}

convertMM2ft <- function(mm){
        feet <- 0.00328084*mm
        return(feet)
}

convertMM2in <- function(mm){
        inches <- (1/25.4)*mm
        return(inches)
}