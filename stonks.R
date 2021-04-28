# THIS HOW YOU COMMENT? K

# ADDING STONKs
install.packages("quantmod")

# FUCK IS A TIBBLE?
install.packages("tidyquant")

#LOAD PACKAGE
library(quantmod)

bal <- .37
shares <- function(stonk,deposit=0,balance=bal){
        num <- floor((deposit + balance)/price(stonk))
        return(num)
}

target <- function(num_shares,deposit=0,balance=bal){
        target_price <- round((deposit+balance)/num_shares,digits=2)
        return(target_price)
}

#TESTING IT OUT

options("getSymbols.warning4.0"=FALSE)
options("getSymbols.yahoo.warning"=FALSE)
# Downloading Apple price using quantmod

getSymbols("AAPL", from = '2017-01-01',
           to = "2018-03-01",warnings = FALSE,
           auto.assign = TRUE)

#STONK PRICE SHORTCUT
getQuote("ticker")[,2]

price <- function(ticker){
  quote <- getQuote(ticker)[,2]
  return(quote)
}

costBasis <- function(oldCB,oldShares,newPrice,newShares){
  newCB <- ((oldCB*oldShares)+(newPrice*newShares))/(oldShares+newShares)
  return(newCB)
}

#COST BASES AS OF 4/28/2021
## side note: could this be an array of some sort?

cbAAPL <- 114.15; numAAPL <- 8
cbARKK <- 143.01; numAARK <- 3
cbBABA <- 220.01; numBABA <- 1
cbGSBD <- 19.92; numGSBD <- 5
cbINTC <- 51.50; numINTC <- 8
cbMATW <- 26.32; numMATW <- 11
cbMO <- 45.43; numMO <- 6
cbMSFT <- 230.61; numMSFT <- 1
cbNKE <- 116.41; numNIKE <- 1
cbOHI <- 32.58; numOHI <- 3
cbSONY <- 79.69; numSONY <- 7
cbSPG <- 65.14; numSPG <- 4
cbSQ <- 177.55; numSQ <- 2
cbT <- 29.27; numT <- 6
cbTCEHY <- 77.02; numTCEHY <- 1
cbTM <- 149.49; numTM <- 1
cbTMUS <- 110.80; numTMUS <- 1
cbVOO <- 310.05; numVOO <- 5
cbVTI <- 186.01; numVTI <- 4
cbVTIr <- 199.12; numVTIr <- 30
cbWMT <- 127.60; numWMT <- 1

#ffs update