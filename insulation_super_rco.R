#INSULATION PERIMETER (SUPER RCO)

#A/C

#SUPER RCO

#4in
rwall_ac4 <- sqft(96,36)
bwall_ac4 <- sqft(84.5,36)
lwall_ac4 <- sqft(96,36)
fwall_ac4 <- sqft(84.5,34.5)

per_ac4 <- (rwall_ac4+bwall_ac4+lwall_ac4+fwall_ac4) #90

rwall_cc4 <- sqft(48,102)
bwall_cc4 <- sqft(48,25.75)
lwall_cc4 <- sqft(48,102)
fwall_cc4 <- sqft(25.75,48)

per_cc4 <- rwall_cc4+bwall_cc4+lwall_cc4+fwall_cc4  #105 (85)

#2in

rwall_ac2 <- sqft(96,36)
bwall_ac2 <- sqft(25.75,36)
rwall_cc2 <- sqft(96,48)
bwall_cc2 <- sqft(25.75,48)
subfloor <- sqft(63.5,27)+sqft(36,17)+sqft(40.75,24)+sqft(15,3)+sqft(37.75,24)+sqft(27,13.75)

sqft2in <- rwall_ac2+rwall_cc2+bwall_cc2+bwall_ac2+subfloor #103 + 10% = 115

#1in

bwall_ac1 <- 2*sqft(58.75,36)
lwall_ac1 <- sqft(96,36)+sqft(96,35)
fwall_ac1 <- sqft(84.5,34.5)
bwall_cc1 <- sqft(58.75,48)*0 
lwall_cc1 <- sqft(96,48)
fwall_cc1 <- sqft(25.75,48)

per_1 <- bwall_ac1+lwall_ac1+fwall_ac1+bwall_cc1+lwall_cc1+fwall_cc1 #140