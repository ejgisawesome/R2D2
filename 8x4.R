# 8 x 4

eight_by_four <- function(a,b){
        l1 <- floor(96/a); w1 <- floor(48/b);
        l2 <- floor(96/b); w2 <- floor(48/a);
        if (l1*w1 >= l2*w2){
                return(l1*w1)
        }
        else{
                return(l2*w2)
        }
}

four_by_four <- function(a,b){
        l1 <- floor(48/a); w1 <- floor(48/b);
                return(l1*w1)
}
