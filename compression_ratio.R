

comp_ratio <- function(bore,stroke,volume){
        b <- bore
        s <- stroke
        Vc <- volume
        
        CR <- ((pi/4*b^2*s)+Vc)/Vc
        return(CR)
}