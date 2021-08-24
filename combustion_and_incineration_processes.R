#Combustion and Incineration Processes

install.packages("PeriodicTable")
library("PeriodicTable")

molw_C <- periodicTable[7,4]
molw_O <- periodicTable[9,4]
molw_CO2 <- molw_C + 2*molw_O

#CHAPTER 2
#Stoichiometry


#Ideal Gas Law 
# PV = n Ru T

#P <- absolute pressure of gas (N/m^2; lb/ft^2)
P <- 101325 #standard atm pressure in Pa (N/m^2)
#V <- volume of gas
#n <- number of moles of gas

#R <- Universal Gas Constant
Ru <- 8.315 #(J/mol*K)

#T <- absolute temperature (K;R)
T <- 293

#Individual Gas Constant R <- Ru / M_gas
# Ideal Gas Law changes to PV = wRT, w <- weight

#example 2.1

# 10,000 kg/day of a spent absorbent containing 92% carbon, 6% ash, and 2% moisture is to be burned
# completely to generate carbon dioxide for process use. The exit temperature of the incinerator is 1000???C.
# How many kilogram mols and how many kilograms of CO2 will be formed per minute? How many cubic
# meters of CO2 will be formed, per minute at a pressure of 1.04 atm?
#         One must first determine the number of kilogram atoms per minute of carbon (atomic weight = 12.01)
# flowing in the waste feed:

ex2_1a <- (0.92*10000)/(12.011*24*60)
# = 0.5319198 kg atoms/min

# Noting that with complete combustion each atom of carbon yields one molecule of carbon dioxide,
# the generation rate of CO2 is 0.532 kg mol/min. The weight flow of CO2 (molecular weight = 44.01)
# will be (0.532)(44.01) = 23.4 kg/min of CO2. The temperature (???K) is 1000 + 273.15 = 1273.15 and
# from Equation 2.1a, one obtains

# In combustion calculations, one commonly knows the number of mols and the temperature, and it is
# desired to compute the volume. For these calculations, it is convenient to obtain the answer by adjusting a
# unit volume at a specified standard condition to the conditions of interest. For such calculations, one can
# use the gas laws expressed in terms of the volume of 1 kg or lb mol of an ideal gas at the standard
# conditions of 0???C or 273.15???K (32???F or 492???R) and 1 atm. The molecular volume is 22.4 m3 (359.3 ft3).
# Denoting the molecular volume as V0 and the pressure and temperature at standard conditions as P0 and
# T0, respectively, the gas law then yields

#V <- n * Vo * (Po/P) * (T/To)
#V = .532*22.4*(1.00/1.04)*(1273.15/273.15)


