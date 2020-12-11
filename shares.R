bal <- 3.06

shares <- function(deposit,price,balance=bal){
        num <- floor((deposit + balance)/price)
        return(num)
}

