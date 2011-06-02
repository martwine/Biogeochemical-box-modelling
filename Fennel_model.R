# R implementation of model of proterozoic oxygen and nitrogen cycles
# For scientific description see Fennel, K, M. Follows and P.G. Falkowski, 2005, Am. j. Sci. 305, 526-545


library("deSolve")

      # boxes
vol_high<-9.0e15  # volume of high lat box / m^3
vol_low<-9.0e15   # volume of low lat box / m^3
vol_deep<-8.1e17  # volume of deep ocean box / m^3
vol_shelf<-1.5e15 # volume of shelf box / m^3

      # initalisation
init_P<-0.2       # initial phophate concentration throughout ocean / uM
init_NO3<-0.0     # inital nitrate concentration throughout ocean / uM
init_NH4<-0.1     # initial ammonium concentration throughout ocean / uM
init_O2<-0.0      # inital oxygen concentration throughout ocean / uM
init_atm_O2<-0    # inital atmospheric oxygen fraction / %

      # mixing parameters
k_hd<-50          # mixing between high lat and deep boxes / Sv
k_ld<-30          # low lat and deep / Sv
k_lh<-30          # low and high lat / Sv
k_ds<-5           # deep and shelf / Sv
k_ls<-5           # low lat and shelf / Sv

      # biogeochemical parameters
u_1<-1            # maximum export production / yr^{-1}
k_P<-0.1          # half-saturation concentration for phosphate uptake / uM
k_N<-1.6          # half-sat concentration for nitrogen uptake / uM
u_2<-0.2          # max rate of N2 fixation / yr^{-1}
z_star<-300       # length scale for remineralisation of organic matter / m
k_anox<-10        # denitrification parameter / uM
u_nitri<-6        # max nitrification rate / yr^{-1}
k_O<-20           # half-sat concn of nitrification / uM
R_OtoP_NO3<-138   # O:P stoichiometry for the production of organic matter based on nitrate
R_OtoP_NH4<-102   # O:P stoichiometry for the production of organic matter based on ammonium
R_NtoP<-6.623     # N:P stoichiometry for the production of organic matter
R_NO3_denit<-84.8 # NO3:P stoichiometry for denitrification
Oeq<-0.2          # Present oxygen equilibrium concentration / mol m^{-3}
tau<-1            # timescale of ocean-atmosphere oxygen equilibration / yr
 
 



