# THIS HOW YOU COMMENT? K

# ADDING STONKs
install.packages("quantmod")

# FUCK IS A TIBBLE?
install.packages("tidyquant")

#LOAD PACKAGE
library(quantmod)

bal <- 1.22
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