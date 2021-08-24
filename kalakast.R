kalakast <- function(wt){
        ratio = 1.066 #Kalakast
        bags <- (wt * ratio) / 55
        return(bags)
}

ks4 <- function(wt){
  ratio = 1.135 #ks4
  bags <- (wt * ratio) / 55
  return(bags)
}