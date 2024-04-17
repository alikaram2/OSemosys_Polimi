*Sets*

Set     YEAR    /2015*2050/;
Set     TECHNOLOGY      /
        IMPOIL	        'Crude Oil Imports'
        MINOIL	        'Crude Oil Extraction'
        IMPBIO	        'Biomass Imports'
        MINBIO	        'Biomass Extraction'
        IMPCOA	        'Coal Imports'
        MINCOA	        'Coal Extraction'
        IMPLFO	        'Light Fuel Oil Imports'
        IMPHFO	        'Heavy Fuel Oil Imports'
        UPSREF001	    'Crude Oil Refinery Option 1'
        UPSREF002	    'Crude Oil Refinery Option 2'
        IMPNGS	        'Natural Gas Imports'
        MINNGS	        'Natural Gas Extraction'
        MINSOL	        'Solar Potential'
        MINWND	        'Wind Potential'
        IMPURN	        'Uranium Imports'
        MINURN	        'Uranium Extraction'
        MINGEO	        'Geothermal Potential'
        PWRBIO001	    'Biomass Power Plant'
        PWRCOA001	    'Coal Power Plant'
        PWRGEO	        'Geothermal Power Plant'
        PWROHC001	    'Light Fuel Oil Power Plant'
        PWROHC002	    'Oil Fired Gas Turbine (SCGT)'
        PWRNGS001	    'Gas Power Plant (CCGT)'
        PWRNGS002	    'Gas Power Plant (SCGT)'
        PWRSOL001	    'Solar PV (Utility)'
        PWRCSP001	    'CSP without Storage'
        PWRCSP002	    'CSP with Storage'
        PWRHYD001	    'Large Hydropower Plant (Dam) (>100MW)'
        PWRHYD002	    'Medium Hydropower Plant (10-100MW)'
        PWRHYD003	    'Small Hydropower Plant (<10MW)'
        PWRWND001	    'Onshore Wind'
        PWRWND002	    'Offshore Wind'
        PWRNUC	        'Nuclear Power Plant'
        PWRTRNIMP	    'Electricity Imports'
        BACKSTOP001	    'Backstop Technology for ELC001'
        PWRTRN	        'Electricity Transmission'
        PWRDIST	        'Electricity Distribution'
        PWROHC003	    'Light Fuel Oil Standalone Generator (1kW)'
        PWRSOL002	    'Solar PV (Distributed with Storage)'
        PWRTRNEXP	    'Electricity Exports'
        BACKSTOP002	    'Backstop for ELC003'
        DEMTRAEVC	    'EV Charger'
        DEMTRAMCYELC    'Electric Motorcycle'
        DEMTRACARELC	'Electric Car'
        DEMTRABUSELC	'Electric Bus + Rail'
        DEMTRAMCYGSL	'Gasoline Motorcycle'
        DEMTRACARGSL	'Gasoline Car'
        DEMTRABUSGSL	'Gasoline Bus + Rail'
        DEMINDELC	    'Industry Standard Efficiency Appliances'
        INDENEFFGD	    'Industry Good Efficiency'
        INDENEFFDP  	'Industry Deep Efficiency'
        DEMINDHEEH	    'Industry Electric Heating High'
        DEMINDHEEL  	'Industry Electric Heating Low'
        DEMINDHECOA 	'Industry Coal Heating'
        DEMINDHEOIL	    'Industry Oil Heating'
        DEMINDHEBIO 	'Industry Biomass Heating'
        DEMRESELC	    'Residential Standard Efficiency Appliances'
        RESENEFFGD	    'Residential Good Efficiency'
        RESENEFFDP	    'Residential Deep Efficiency'
        DEMRESCKNELC	'Residential Electric Stove'
        DEMRESCKNOIL	'Residential Oil Stove'
        DEMRESCKNBIO	'Residential Biomass Stove'
        DEMCOMELC	    'Commercial Standard Efficiency Appliances'
        COMENEFFGD	    'Commercial Good Efficiency'
        COMENEFFDP	    'Commercial Deep Efficiency'
        DEMCOMHEOIL 	'Commercial Oil Heating'
        DEMCOMHEBIO 	'Commercial Biomass Heating'
        DEMCOMHEEL	    'Commercial Electric Heating Low'
        MINHYD	        'Hydro Potential'
        PWRHYD004	    'Off-grid Hydropower'
        PWRSOL001S	    'Utility-scale PV with 2 hour storage'
        PWRWND001S	    'Onshore Wind power plant with storage'
        DEMRESHEBIO	    'Residential Biomass Heating'
        DEMRESHEOIL	    'Residential Oil Heating'
        DEMRESHEEL	    'Residential Electric Heating Low'

    /;


Set     TIMESLICE   /
        SPD  'Spring Day'
        SPN  'Spring Night'
        SD  'Summer Day'
        SN  'Summer Night'
        AD  'Autumn Day'
        AN  'Autumn Night'
        WD  'Winter Day'
        WN  'Winter Night'
/;


Set     FUEL    /
        OIL	    'Crude Oil'
        BIO	    'Biomass'
        COA	    'Coal'
        LFO	    'Light Fuel Oil '
        NGS	    'Natural Gas'
        HFO	    'Heavy Fuel Oil'
        SOL	    'Solar' 
        HYD	    'Hydro'
        WND	    'Wind'
        URN	    'Uranium'
        GEO	    'Geothermal'
        ELC001	'Electricity from power plants'
        ELC002	'Electricity after transmission'
        ELC003	'Electricity after distribution'
        ELC004  'Electricity from Renewables'
        ELCEV	'Electricity for EVs'
        TRAMCY	'Motorcycle Transport Demand'
        TRACAR	'Car Transport Demand'
        TRABUS	'Bus + Rail Transport Demand'
        INDELC	'Industrial Electricity Demand'
        INDHEH	'Industry High Heat Demand'
        INDHEL  'Industry Low Heat Demand'
        RESELC	'Residential Electricity Demand'
        RESCKN	'Residential Cooking Demand'
        COMELC	'Commercial Electricity Demand'
        COMHEL	'Commercial Low Heat Demand'
        RESHEL	'Residential Low Heat Demand' 

/;

Set     EMISSION    /
        EMICO2	'Emission factor for CO2'
        EMICH4	'Emission factor for methane'
        EMIFGA	'Emission factor for Fluorinated gases'
        EMIN2O	'Emission factor for Nitrous Oxide'
        EMIRET	'Emission factor for RET targets '
/;

Set MODE_OF_OPERATION   /   1,2  /;
Set REGION              /'MOROCCO'/;
Set SEASON              /1, 2, 3, 4/;
Set DAILYTIMEBRACKET    /1, 2/;
Set DAYTYPE             /1/;
Set STORAGE             /GH, BATT/;

# characterize technologies 
set power_plants(TECHNOLOGY) /  PWRBIO001, PWRCOA001, PWRGEO, PWROHC001, PWROHC002, PWRNGS001, PWRNGS002,  PWRSOL001, PWRCSP001, PWRHYD001, PWRHYD002, PWRHYD003, PWRWND001, PWRWND002, PWRNUC, PWROHC003,PWRSOL002, PWPEMELECTRO /;
set ##storage_plants(TECHNOLOGY) / PWRCSP002, PWRSOL002, PWRSOL001S, PWRWND001S /;
set fuel_transformation(TECHNOLOGY) / UPSREF001, UPSREF002 /;
set appliances(TECHNOLOGY) / RHE, RHO, RL1, TXD, TXE, TXG /;
#set unmet_demand(TECHNOLOGY) / /;
#set transport(TECHNOLOGY) / TXD, TXE, TXG /;
#set primary_imports(TECHNOLOGY) / IMPHCO1, IMPOIL1, IMPURN1 /;
#set secondary_imports(TECHNOLOGY) / IMPDSL1, IMPGSL1 /;

#set renewable_tech(TECHNOLOGY) /HYDRO/; 
#set renewable_fuel(FUEL) /HYD/; 

#set fuel_production(TECHNOLOGY);
#set fuel_production_fict(TECHNOLOGY) /RIV/;
#set secondary_production(TECHNOLOGY) /COAL, NUCLEAR, HYDRO, STOR_HYDRO, DIESEL_GEN, SRE/;

#Characterize fuels 
#set primary_fuel(FUEL) / HCO, OIL, URN, HYD /;
#set secondary_carrier(FUEL) / DSL, GSL, ELC /;
set final_demand(FUEL) / TRAMCY, TRACAR, TRABUS, INDELC, INDHEH, INDHEL, RESELC, RESCKN, RESHEL, COMELC, COMHEL /;

*$include "Model/osemosys_init.gms"

##Parameters - Global
##JUAN DIEGO

parameter YearSplit(l,y)/
  SPD.(2015*2050)  .125
  SPN.(2015*2050)  .125
  SD.(2015*2050)  .125
  SN.(2015*2050)  .125
  AD.(2015*2050)  .125
  AN.(2015*2050)  .125
  WD.(2015*2050)  .125
  WN.(2015*2050)  .125
/;

DiscountRate(r)=0.1;

DaySplit(y,lh)=12/(24*365);

parameter Conversionls(l,ls) /
  SPD.2  1
  SPN.2  1
  SD.3  1
  SN.3  1
  AD.4  1
  AN.4  1
  WD.1  1
  WN.1  1
/;

parameter Conversionld (l,ld) /
  SPD.1  1
  SPN.1  1
  SD.1 1
  SN.1  1
  AD.1  1
  AN.1  1
  WD.1  1
  WN.1  1
/;

parameter Conversionlh(l,lh) /
  SPD.1  1
  SPN.2  1
  SD.1 1
  SN.2  1
  AD.1  1
  AN.2  1
  WD.1  1
  WN.2  1
/;

DaysInDayType(y,ls,ld) = 7;

TradeRoute(r,rr,f,y)=0;

DepreciationMethod(r)=1;

#PARAMETERS -Demand

parameter SpecifiedAnnualDemand(r,f,y) /
MOROCCO.INDELC.2015 34.396
MOROCCO.INDELC.2016 35.551
MOROCCO.INDELC.2017 36.705
MOROCCO.INDELC.2018 37.86
MOROCCO.INDELC.2019 39.014
MOROCCO.INDELC.2020 40.169
MOROCCO.INDELC.2021 42.648
MOROCCO.INDELC.2022 45.127
MOROCCO.INDELC.2023 47.607
MOROCCO.INDELC.2024 50.086
MOROCCO.INDELC.2025 52.565
MOROCCO.INDELC.2026 55.045
MOROCCO.INDELC.2027 57.524
MOROCCO.INDELC.2028 60.003
MOROCCO.INDELC.2029 62.483
MOROCCO.INDELC.2030 64.962
MOROCCO.INDELC.2031 68.429
MOROCCO.INDELC.2032 71.896
MOROCCO.INDELC.2033 75.363
MOROCCO.INDELC.2034 78.83
MOROCCO.INDELC.2035 82.297
MOROCCO.INDELC.2036 85.764
MOROCCO.INDELC.2037 89.231
MOROCCO.INDELC.2038 92.698
MOROCCO.INDELC.2039 96.165
MOROCCO.INDELC.2040 99.633
MOROCCO.INDELC.2041 103.483
MOROCCO.INDELC.2042 107.333
MOROCCO.INDELC.2043 111.184
MOROCCO.INDELC.2044 115.034
MOROCCO.INDELC.2045 118.885
MOROCCO.INDELC.2046 122.735
MOROCCO.INDELC.2047 126.585
MOROCCO.INDELC.2048 130.436
MOROCCO.INDELC.2049 134.286
MOROCCO.INDELC.2050 138.137

MOROCCO.RESELC.2015 67.783
MOROCCO.RESELC.2016 70.058
MOROCCO.RESELC.2017 72.333
MOROCCO.RESELC.2018 74.608
MOROCCO.RESELC.2019 76.883
MOROCCO.RESELC.2020 79.159
MOROCCO.RESELC.2021 84.045
MOROCCO.RESELC.2022 88.93
MOROCCO.RESELC.2023 93.816
MOROCCO.RESELC.2024 98.702
MOROCCO.RESELC.2025 103.588
MOROCCO.RESELC.2026 108.474
MOROCCO.RESELC.2027 113.36
MOROCCO.RESELC.2028 118.246
MOROCCO.RESELC.2029 123.132
MOROCCO.RESELC.2030 128.018
MOROCCO.RESELC.2031 134.85
MOROCCO.RESELC.2032 141.682
MOROCCO.RESELC.2033 148.515
MOROCCO.RESELC.2034 155.347
MOROCCO.RESELC.2035 162.179
MOROCCO.RESELC.2036 169.012
MOROCCO.RESELC.2037 175.844
MOROCCO.RESELC.2038 182.677
MOROCCO.RESELC.2039 189.509
MOROCCO.RESELC.2040 196.341
MOROCCO.RESELC.2041 203.929
MOROCCO.RESELC.2042 211.517
MOROCCO.RESELC.2043 219.105
MOROCCO.RESELC.2044 226.693
MOROCCO.RESELC.2045 234.28
MOROCCO.RESELC.2046 241.868
MOROCCO.RESELC.2047 249.456
MOROCCO.RESELC.2048 257.044
MOROCCO.RESELC.2049 264.632
MOROCCO.RESELC.2050 272.219

##.
#COMMERCIAL (TRADE) ELECTRICITY IS ASSUMED TO BE NULL (?)
#According to the IEA, Morocco is a net importer of electricity https://www.iea.org/countries/morocco/electricity
MOROCCO.COMELC.(2015*2050) 0


/;

parameter SpecifiedDemandProfile(r,f,l,y) /
        MOROCCO.INDELC.SPD.(2015*2050) 0.127
        MOROCCO.INDELC.SPN.(2015*2050) 0.116
        MOROCCO.INDELC.SD.(2015*2050) 0.142
        MOROCCO.INDELC.SN.(2015*2050) 0.135
        MOROCCO.INDELC.AD.(2015*2050) 0.131
        MOROCCO.INDELC.AN.(2015*2050) 0.12
        MOROCCO.INDELC.WD.(2015*2050) 0.121
        MOROCCO.INDELC.WN.(2015*2050) 0.108

        MOROCCO.RESELC.SPD.(2015*2050) 0.127
        MOROCCO.RESELC.SPN.(2015*2050) 0.116
        MOROCCO.RESELC.SD.(2015*2050) 0.142
        MOROCCO.RESELC.SN.(2015*2050) 0.135
        MOROCCO.RESELC.AD.(2015*2050) 0.131
        MOROCCO.RESELC.AN.(2015*2050) 0.12
        MOROCCO.RESELC.WD.(2015*2050) 0.121
        MOROCCO.RESELC.WN.(2015*2050) 0.108

        MOROCCO.COMELC.SPD.(2015*2050) 0.127
        MOROCCO.COMELC.SPN.(2015*2050) 0.116
        MOROCCO.COMELC.SD.(2015*2050) 0.142
        MOROCCO.COMELC.SN.(2015*2050) 0.135
        MOROCCO.COMELC.AD.(2015*2050) 0.131
        MOROCCO.COMELC.AN.(2015*2050) 0.12
        MOROCCO.COMELC.WD.(2015*2050) 0.121
        MOROCCO.COMELC.WN.(2015*2050) 0.108
 
#Reported source: Brinkerink     M,     Deane     P     (2020).    PLEXOS
/;
## We cannot use the accumulated annual demand

#Parameters - Performance

CapacityToActivityUnit(r,t)$power_plants(t) =31.356;

CapacityToActivityUnit(r,t)$(CapacityToActivityUnit(r,t) = 0) = 1;

CapacityFactor(r,'IMPOIL',l,y) = 1;
CapacityFactor(r,'MINOIL',l,y) = 1;
CapacityFactor(r,'IMPBIO',l,y) = 1;
CapacityFactor(r,'MINBIO',l,y) = 1;
CapacityFactor(r,'IMPCOA',l,y) = 1;
CapacityFactor(r,'MINCOA',l,y) = 1;
CapacityFactor(r,'IMPLFO',l,y) = 1;
CapacityFactor(r,'IMPHFO',l,y) = 1;
CapacityFactor(r,'UPSREF001',l,y) = 1;
CapacityFactor(r,'UPSREF002',l,y) = 1;
CapacityFactor(r,'IMPNGS',l,y) = 1;
CapacityFactor(r,'MINNGS',l,y)= 1;
CapacityFactor(r,'MINSOL',l,y) = 1;
CapacityFactor(r,'MINWND',l,y) = 1;
CapacityFactor(r,'IMPURN',l,y) = 1;
CapacityFactor(r,'MINURN',l,y) = 1;
CapacityFactor(r,'MINGEO',l,y) = 1;
CapacityFactor(r,'PWRBIO001',l,y) = 0.5;
CapacityFactor(r,'PWRCOA001',l,y) = 0.85;
CapacityFactor(r,'PWRGEO',l,y) = 0.794;
CapacityFactor(r,'PWROHC001',l,y) = 0.8;
CapacityFactor(r,'PWROHC002',l,y) = 0.8;
CapacityFactor(r,'PWRNGS001',l,y) = 0.85;
CapacityFactor(r,'PWRNGS002',l,y) = 0.85;
CapacityFactor(r,'PWRSOL001',l,y)=0;
CapacityFactor(r,'PWRCSP001',l,y)=0;
CapacityFactor(r,'PWRCSP002',l,y)=0.209879298;
CapacityFactor(r,'PWRHYD001',l,y)=0.209879298;
CapacityFactor(r,'PWRHYD002',l,y)=0.209879298;
CapacityFactor(r,'PWRHYD003',l,y)=0.355455864;
CapacityFactor(r,'PWRWND001',l,y)=0.335275794;
CapacityFactor(r,'PWRWND002',l,y)=0.85;
CapacityFactor(r,'PWRNUC',l,y)=1;
CapacityFactor(r,'PWRTRNIMP',l,y)=1;
CapacityFactor(r,'BACKSTOP001',l,y)=1;
CapacityFactor(r,'PWRTRN',l,y)=	1;
CapacityFactor(r,'PWRDIST',l,y)=0.3;
CapacityFactor(r,'PWROHC003',l,y)=0;
CapacityFactor(r,'PWRSOL002',l,y)=1;
CapacityFactor(r,'PWRTRNEXP',l,y)=1;
CapacityFactor(r,'BACKSTOP002',l,y)=1;
CapacityFactor(r,'BACKSTOP003',l,y)=1
CapacityFactor(r,'DEMTRAEVC',l,y)=1;
CapacityFactor(r,'DEMTRAMCYELC',l,y)=1;
CapacityFactor(r,'DEMTRACARELC',l,y)=1;
CapacityFactor(r,'DEMTRABUSELC',l,y)=1;
CapacityFactor(r,'DEMTRAMCYGSL',l,y)=1;
CapacityFactor(r,'DEMTRACARGSL',l,y)=1;
CapacityFactor(r,'DEMTRABUSGSL',l,y)=1;
CapacityFactor(r,'DEMINDELC',l,y)=1;
CapacityFactor(r,'INDENEFFGD',l,y)=1;
CapacityFactor(r,'INDENEFFDP',l,y)=1;
CapacityFactor(r,'DEMINDHEEH',l,y)=1;
CapacityFactor(r,'DEMINDHEEL',l,y)=1;
CapacityFactor(r,'DEMINDHECOA',l,y)=1;
CapacityFactor(r,'DEMINDHEOIL',l,y)=1;
CapacityFactor(r,'DEMINDHEBIO',l,y)=1;
CapacityFactor(r,'DEMRESELC',l,y)=1;
CapacityFactor(r,'RESENEFFGD',l,y)=1;
CapacityFactor(r,'RESENEFFDP',l,y)=1;
CapacityFactor(r,'DEMRESCKNELC',l,y)=1;
CapacityFactor(r,'DEMRESCKNOIL',l,y)=1;
CapacityFactor(r,'DEMRESCKNBIO',l,y)=1;
CapacityFactor(r,'DEMCOMELC',l,y)=1;
CapacityFactor(r,'COMENEFFGD',l,y)=1;
CapacityFactor(r,'COMENEFFDP',l,y)=1;
CapacityFactor(r,'DEMCOMHEOIL',l,y)=1;
CapacityFactor(r,'DEMCOMHEBIO',l,y)=1;
CapacityFactor(r,'DEMCOMHEEL',l,y)=1;
CapacityFactor(r,'MINHYD',l,y)	=0.209879298;
CapacityFactor(r,'PWRHYD004',l,y)=0;
CapacityFactor(r,'PWRSOL001S',l,y)=0.335275794;
CapacityFactor(r,'PWRWND001S',l,y)=1;
CapacityFactor(r,'DEMRESHEBIO',l,y)=1;
CapacityFactor(r,'DEMRESHEOIL',l,y)=1;
CapacityFactor(r,'DEMRESHEEL',l,y)=1;


AvailabilityFactor(r,t,y) = 0;


parameter OperationalLife(r,t) /
        MOROCCO.IMPOIL	        1
        MOROCCO.MINOIL	        1
        MOROCCO.IMPBIO	        1
        MOROCCO.MINBIO	        1
        MOROCCO.IMPCOA	        1
        MOROCCO.MINCOA	        1
        MOROCCO.IMPLFO	        1
        MOROCCO.IMPHFO	        1
        MOROCCO.UPSREF001	35
        MOROCCO.UPSREF002	35
        MOROCCO.IMPNGS	        1
        MOROCCO.MINNGS	        1
        MOROCCO.MINSOL	        1
        MOROCCO.MINWND	        1
        MOROCCO.IMPURN	        1
        MOROCCO.MINURN	        1
        MOROCCO.MINGEO	        1
        MOROCCO.PWRBIO001	30
        MOROCCO.PWRCOA001	35
        MOROCCO.PWRGEO	        25
        MOROCCO.PWROHC001	25
        MOROCCO.PWROHC002	25
        MOROCCO.PWRNGS001	30
        MOROCCO.PWRNGS002	25
        MOROCCO.PWRSOL001	24
        MOROCCO.PWRCSP001	30
        MOROCCO.PWRCSP002	30
        MOROCCO.PWRHYD001	50
        MOROCCO.PWRHYD002	50
        MOROCCO.PWRHYD003	50
        MOROCCO.PWRWND001	25
        MOROCCO.PWRWND002	25
        MOROCCO.PWRNUC	        50
        MOROCCO.PWRTRNIMP	50
        MOROCCO.BACKSTOP001	80
        MOROCCO.PWRTRN	        50
        MOROCCO.PWRDIST	        70
        MOROCCO.PWROHC003	10
        MOROCCO.PWRSOL002	24
        MOROCCO.PWRTRNEXP	50
        MOROCCO.BACKSTOP002	80
        MOROCCO.DEMTRAEVC	50
        MOROCCO.DEMTRAMCYELC	15
        MOROCCO.DEMTRACARELC	20
        MOROCCO.DEMTRABUSELC	20
        MOROCCO.DEMTRAMCYGSL	15
        MOROCCO.DEMTRACARGSL	20
        MOROCCO.DEMTRABUSGSL	20
        MOROCCO.DEMINDELC	10
        MOROCCO.INDENEFFGD	10
        MOROCCO.INDENEFFDP	10
        MOROCCO.DEMINDHEEH	15
        MOROCCO.DEMINDHEEL	15
        MOROCCO.DEMINDHECOA	15
        MOROCCO.DEMINDHEOIL	15
        MOROCCO.DEMINDHEBIO	15
        MOROCCO.DEMRESELC	10
        MOROCCO.RESENEFFGD	10
        MOROCCO.RESENEFFDP	10
        MOROCCO.DEMRESCKNELC	10
        MOROCCO.DEMRESCKNOIL	10
        MOROCCO.DEMRESCKNBIO	10
        MOROCCO.DEMCOMELC	10
        MOROCCO.COMENEFFGD	10
        MOROCCO.COMENEFFDP	10
        MOROCCO.DEMCOMHEOIL	15
        MOROCCO.DEMCOMHEBIO	15
        MOROCCO.DEMCOMHEEL	15
        MOROCCO.MINHYD	        1
        MOROCCO.PWRHYD004	50
        MOROCCO.PWRSOL001S	24
        MOROCCO.PWRWND001S	25
        MOROCCO.DEMRESHEBIO	15
        MOROCCO.DEMRESHEOIL	15
        MOROCCO.DEMRESHEEL	15

/;

OperationalLife(r,t)$(OperationalLife(r,t) = 0) = 1;

parameter ResidualCapacity(r,t,y) /

/;
$if set no_initial_capacity ResidualCapacity(r,t,y) = 0;

parameter InputActivityRatio(r,t,f,m,y) /
        MOROCCO.UPSREF001.OIL.1.(2015*2050)  1
        MOROCCO.UPSREF002.OIL.1.(2015*2050)  1
        MOROCCO.PWRBIO001.BIO.1.(2015*2050)  2.86    
        MOROCCO.PWRCOA001.COA.1.(2015*2050)  2.7
        MOROCCO.PWRGEO.GEO.1(2015*2050)      1.25
        MOROCCO.PWROHC001.LFO.1.(2015*2050)  2.86
        MOROCCO.PWROHC002.HFO.1(2015*2050)   2.86
        MOROCCO.PWRNGS001.NGS.1(2015*2050)   2.08
        MOROCCO.PWRNGS002.NGS.1.(2015*2050)  3.33
        MOROCCO.PWRSOL001.SOL.1.(2015*2050)  1
        MOROCCO.PWRCSP001.SOL.1.(2015*2050)  1
        MOROCCO.PWRCSP002.SOL.1.(2015*2050)  1
        MOROCCO.PWRHYD001.HYD.1.(2015*2050)  1
        MOROCCO.PWRHYD002.HYD.1.(2015*2050)  1
        MOROCCO.PWRHYD003.HYD.1.(2015*2050)  1
        MOROCCO.PWRWND001.WND.1.(2015*2050)  1
        MOROCCO.PWRWND002.WND.1(2015*2015)   1
        MOROCCO.PWRNUC.URN.1.(2015*2050)     3.03
        MOROCCO.PWRTRN.ELC001.1.(2015*2050)	1
        MOROCCO.PWRDIST.ELC002.1.(2015*2050)	1
        MOROCCO.PWROHC003.LFO.1.(2015*2050)	6.25
        MOROCCO.PWRSOL002.SOL.1.(2015*2050)	1
        MOROCCO.PWRTRNEXP.ELC001.1.(2015*2050)	1
        MOROCCO.DEMTRAEVC.ELC003.1.(2015*2050)	1.11
        MOROCCO.DEMTRAMCYELC.ELCEV.1.(2015*2050) 1.11
        MOROCCO.DEMTRACARELC.ELCEV.1.(2015*2050) 1.11
        MOROCCO.DEMTRABUSELC.ELCEV.1.(2015*2050) 1.11
        MOROCCO.DEMTRAMCYGSL.LFO.1.(2015*2050)	5
        MOROCCO.DEMTRACARGSL.LFO.1.(2015*2050)	5
        MOROCCO.DEMTRABUSGSL.LFO.1.(2015*2050)	4
        MOROCCO.DEMINDELC.ELC003.1.(2015*2050)	1
        MOROCCO.INDENEFFGD.ELC003.1.(2015*2050)	1
        MOROCCO.INDENEFFDP.ELC003.1.(2015*2050)	1
        MOROCCO.DEMINDHEEH.ELC003.1.(2015*2050)	1
        MOROCCO.DEMINDHEEL.ELC003.1.(2015*2050)	1
        MOROCCO.DEMINDHECOA.COA.1.(2015*2050)	1.234567901
        MOROCCO.DEMINDHEOIL.LFO.1.(2015*2050)	1.234567901
        MOROCCO.DEMINDHEBIO.BIO.1.(2015*2050)	1.219512195
        MOROCCO.DEMRESELC.ELC003.1.(2015*2050)	1
        MOROCCO.RESENEFFGD.LC003.1.(2015*2050)	1
        MOROCCO.RESENEFFDP.ELC003.1.(2015*2050)	1
        MOROCCO.DEMRESCKNELC.ELC003.1.(2015*2050) 1.05
        MOROCCO.DEMRESCKNOIL.LFO.1.(2015*2050)	1.818
        MOROCCO.DEMRESCKNBIO.BIO.1.(2015*2050)	5.55
        MOROCCO.DEMCOMELC.ELC003.1.(2015*2050)	1
        MOROCCO.COMENEFFGD.ELC003.1.(2015*2050)	1
        MOROCCO.COMENEFFDP.ELC003.1.(2015*2050)	1
        MOROCCO.DEMCOMHEOIL.LFO.1.(2015*2050)	1.063829787
        MOROCCO.DEMCOMHEBIO.BIO.1.(2015*2050)	1.219512195
        MOROCCO.DEMCOMHEEL.ELC003.1.(2015*2050)	1
        MOROCCO.PWRHYD004.HYD.1.(2015*2050)	1
        MOROCCO.PWRSOL001S.SOL.1.(2015*2050)	1
        MOROCCO.PWRWND001S.WND.1.(2015*2050)	1
        MOROCCO.DEMRESHEBIO.BIO.1.(2015*2050)	1.219512195
        MOROCCO.DEMRESHEOIL.LFO.1.(2015*2050)	1.063829787
        MOROCCO.DEMRESHEEL.ELC003.1.(2015*2050)	1





/;
parameter OutputActivityRatio(r,t,f,m,y) /
        MOROCCO.IMPOIL.OIL.1.(2015*2050)                1
        MOROCCO.MINOIL.OIL.1.(2015*2050)	        1
        MOROCCO.IMPBIO.BIO.1.(2015*2050)	        1
        MOROCCO.MINBIO.BIO.1.(2015*2050)	        1
        MOROCCO.IMPCOA.COA.1.(2015*2050)	        1
        MOROCCO.MINCOA.COA.1.(2015*2050)	        1
        MOROCCO.IMPLFO.LFO.1.(2015*2050)	        1
        MOROCCO.IMPHFO.HFO.1.(2015*2050)	        1
        MOROCCO.UPSREF001.HFO.1.(2015*2050)             0.9
        MOROCCO.UPSREF001.LFO.1.(2015*2050)             0.1
        MOROCCO.UPSREF002.HFO.1.(2015*2050)             0.8
        MOROCCO.UPSREF002.LFO.1.(2015*2050)             0.2
        MOROCCO.IMPNGS.NGS.1.(2015*2050)	        1
        MOROCCO.MINNGS.NGS.1.(2015*2050)	        1
        MOROCCO.MINSOL.SOL.1.(2015*2050)	        1
        MOROCCO.MINWND.WND.1.(2015*2050)	        1
        MOROCCO.IMPURN.URN.1.(2015*2050)	        1
        MOROCCO.MINURN.URN.1.(2015*2050)	        1
        MOROCCO.MINGEO.GEO.1.(2015*2050)	        1
        MOROCCO.PWRBIO001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRCOA001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRGEO.ELC001.1.(2015*2050)	        1
        MOROCCO.PWROHC001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWROHC002.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRNGS001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRNGS002.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRSOL001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRCSP001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRCSP002.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRHYD001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRHYD002.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRHYD003.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRWND001.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRWND002.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRNUC.ELC001.1.(2015*2050)	        1
        MOROCCO.PWRTRNIMP.ELC001.1.(2015*2050)	        1
        MOROCCO.BACKSTOP001.ELC001.1.(2015*2050)        1
        MOROCCO.PWRTRN.ELC002.1.(2015*2050)	        0.95
        MOROCCO.PWRDIST.ELC003.1.2015	                0.884210526
        MOROCCO.PWRDIST.ELC003.1.2016	                0.894736842
        MOROCCO.PWRDIST.ELC003.1.2017	                0.897368421
        MOROCCO.PWRDIST.ELC003.1.2018	                0.9
        MOROCCO.PWRDIST.ELC003.1.2019	                0.902631579
        MOROCCO.PWRDIST.ELC003.1.2020	                0.905263158
        MOROCCO.PWRDIST.ELC003.1.2021	                0.906315789
        MOROCCO.PWRDIST.ELC003.1.2022	                0.907368421
        MOROCCO.PWRDIST.ELC003.1.2023	                0.908421053
        MOROCCO.PWRDIST.ELC003.1.2024	                0.909473684
        MOROCCO.PWRDIST.ELC003.1.2025	                0.910526316
        MOROCCO.PWRDIST.ELC003.1.2026	                0.911578947
        MOROCCO.PWRDIST.ELC003.1.2027	                0.912631579
        MOROCCO.PWRDIST.ELC003.1.2028	                0.913684211
        MOROCCO.PWRDIST.ELC003.1.2029	                0.914736842
        MOROCCO.PWRDIST.ELC003.1.2030	                0.915789474
        MOROCCO.PWRDIST.ELC003.1.2031	                0.916842105
        MOROCCO.PWRDIST.ELC003.1.2032	                0.917894737
        MOROCCO.PWRDIST.ELC003.1.2033	                0.918947368
        MOROCCO.PWRDIST.ELC003.1.2034	                0.92
        MOROCCO.PWRDIST.ELC003.1.2035	                0.921052632
        MOROCCO.PWRDIST.ELC003.1.2036	                0.922105263
        MOROCCO.PWRDIST.ELC003.1.2037	                0.923157895
        MOROCCO.PWRDIST.ELC003.1.2038	                0.924210526
        MOROCCO.PWRDIST.ELC003.1.2039	                0.925263158
        MOROCCO.PWRDIST.ELC003.1.2040	                0.926315789
        MOROCCO.PWRDIST.ELC003.1.2041	                0.927368421
        MOROCCO.PWRDIST.ELC003.1.2042	                0.928421053
        MOROCCO.PWRDIST.ELC003.1.2043	                0.929473684
        MOROCCO.PWRDIST.ELC003.1.2044	                0.930526316
        MOROCCO.PWRDIST.ELC003.1.2045	                0.931578947
        MOROCCO.PWRDIST.ELC003.1.2046	                0.932631579
        MOROCCO.PWRDIST.ELC003.1.2047	                0.933684211
        MOROCCO.PWRDIST.ELC003.1.2048	                0.934736842
        MOROCCO.PWRDIST.ELC003.1.2049	                0.935789474
        MOROCCO.PWRDIST.ELC003.1.2050	                0.936842105
        MOROCCO.PWROHC003.ELC003.1.(2015*2050)	        1
        MOROCCO.PWRSOL002.ELC003.1.(2015*2050)	        1
        MOROCCO.BACKSTOP002.ELC003.1.(2015*2050)	1
        MOROCCO.DEMTRAEVC.ELCEV.1.(2015*2050)           1
        MOROCCO.DEMTRAMCYELC.TRAMCY.1.(2015*2050)	1
        MOROCCO.DEMTRACARELC.TRACAR.1.(2015*2050)	1
        MOROCCO.DEMTRABUSELC.TRABUS.1.(2015*2050)	1
        MOROCCO.DEMTRAMCYGSL.TRAMCY.1.(2015*2050)	1
        MOROCCO.DEMTRACARGSL.TRACAR.1.(2015*2050)	1
        MOROCCO.DEMTRABUSGSL.TRABUS.1.(2015*2050)	1
        MOROCCO.DEMINDELC.INDELC.1.(2015*2050)	        1
        MOROCCO.INDENEFFGD.INDELC.1.(2015*2050)	        1.15
        MOROCCO.INDENEFFDP.INDELC.1.(2015*2050)	        1.3
        MOROCCO.DEMINDHEEH.INDHEH.1.(2015*2050)	        1
        MOROCCO.DEMINDHEEL.INDHEL.1.(2015*2050)	        1
        MOROCCO.DEMINDHECOA.INDHEH.1.(2015*2050)	1
        MOROCCO.DEMINDHEOIL.INDHEH.1.(2015*2050)	1
        MOROCCO.DEMINDHEBIO.INDHEL.1.(2015*2050)	1
        MOROCCO.DEMRESELC.RESELC.1.(2015*2050)	        1
        MOROCCO.RESENEFFGD.RESELC.1.(2015*2050)	        1.15
        MOROCCO.RESENEFFDP.RESELC.1.(2015*2050)	        1.3
        MOROCCO.DEMRESCKNELC.RESCKN.1.(2015*2050)	1
        MOROCCO.DEMRESCKNOIL.RESCKN.1.(2015*2050)	1
        MOROCCO.DEMRESCKNBIO.RESCKN.1.(2015*2050)	1
        MOROCCO.DEMCOMELC.COMELC.1.(2015*2050)	        1
        MOROCCO.COMENEFFGD.COMELC.1.(2015*2050)	        1.15
        MOROCCO.COMENEFFDP.COMELC.1.(2015*2050)	        1.3
        MOROCCO.DEMCOMHEOIL.COMHEL.1.(2015*2050)	1
        MOROCCO.DEMCOMHEBIO.COMHEL.1.(2015*2050)	1
        MOROCCO.DEMCOMHEEL.COMHEL.1.(2015*2050) 	1
        MOROCCO.MINHYD.HYD.1.(2015*2050)	        1
        MOROCCO.PWRHYD004.ELC003.1.(2015*2050)	        1
        MOROCCO.PWRSOL001S.ELC001.1.(2015*2050) 	1
        MOROCCO.PWRWND001S.ELC001.1.(2015*2050)	        1
        MOROCCO.DEMRESHEBIO.RESHEL.1.(2015*2050)	1
        MOROCCO.DEMRESHEOIL.RESHEL.1.(2015*2050)	1
        MOROCCO.DEMRESHEEL.RESHEL.1.(2015*2050)	        1


/;

# By default, assume for imported secondary fuels the same efficiency of the internal refineries
InputActivityRatio(r,'IMPDSL1','OIL',m,y)$(not OutputActivityRatio(r,'SRE','DSL',m,y) eq 0) = 1/OutputActivityRatio(r,'SRE','DSL',m,y); 
InputActivityRatio(r,'IMPGSL1','OIL',m,y)$(not OutputActivityRatio(r,'SRE','GSL',m,y) eq 0) = 1/OutputActivityRatio(r,'SRE','GSL',m,y); 


##Capital cost is $/kw
parameter CapitalCost   /
        MORROCO.IMPOIL.(2015*2050)              0.0001
        MORROCO.MINOIL.(2015*2050)              0.0001
        MORROCO.IMPBIO.(2015*2050)              0.0001
        MORROCO.MINBIO.(2015*2050)              0.0001
        MORROCO.IMPCOA.(2015*2050)              0.0001
        MORROCO.MINCOA.(2015*2050)              0.0001
        MORROCO.IMPLFO.(2015*2050)              0.0001
        MORROCO.IMPHFO.(2015*2050)              0.0001
        MORROCO.UPSREF001.(2015*2050)           24.1
        MORROCO.UPSREF002.(2015*2050)           24.1
        MORROCO.IMPNGS.(2015*2050)              0.0001
        MORROCO.MINNGS.(2015*2050)              0.0001 
        MORROCO.MINSOL.(2015*2050)              0.0001
        MORROCO.MINWND.(2015*2050)              0.0001
        MORROCO.IMPURN.(2015*2050)              0.0001
        MORROCO.MINURN.(2015*2050)              0.0001
        MORROCO.MINGEO.(2015*2050)              0.0001
        MORROCO.PWRBIO001.(2015*2050)           2500
        MORROCO.PWRCOA001.(2015*2050)           2500
       MORROCO. PWRGEO.(2015*2050)              4000      
        MORROCO.PWROHC001.(2015*2050)           1200
        MORROCO.PWROHC002.(2015*2050)           1450
        MORROCO.PWRNGS001.(2015*2050)           1200
        MORROCO.PWRNGS002.(2015*2050)           700
        MORROCO.PWRSOL001.(2015*2050)           2165
        MORROCO.PWRCSP001.(2015*2050)           6051
        MORROCO.PWRCSP002.(2015*2050)           8645
        MORROCO.PWRHYD001.(2015*2050)           3000
        MORROCO.PWRHYD002.(2015*2050)           2500
        MORROCO.PWRHYD003.(2015*2050)           3000
        MORROCO.PWRWND001.(2015*2050)           1985
        MORROCO.PWRWND002.(2015*2050)           5000
        MORROCO.PWRNUC..(2015*2050)              6137
        MORROCO.PWRTRNIMP.(2015*2050)           0
        MORROCO.BACKSTOP001.(2015*2050)         1e9
        MORROCO.PWRTRN.(2015*2050)              365
        MORROCO.PWRDIST.(2015*2050)             2502
        MORROCO.PWROHC003.(2015*2050)           750
        MORROCO.PWRSOL002.(2015*2050)           6840
        MORROCO.PWRTRNEXP.(2015*2050)           0
        MORROCO.BACKSTOP002.(2015*2050)         1e9
        MORROCO.DEMTRAEVC.(2015*2050)           500
        MORROCO.DEMTRAMCYELC.(2015*2050)        2497.687
        MORROCO.DEMTRACARELC.(2015*2050)        228492.4
        MORROCO.DEMTRABUSELC.(2015*2050)        148526.6
        MORROCO.DEMTRAMCYGSL.(2015*2050)        0.0001
        MORROCO.DEMTRACARGSL.(2015*2050)        0.0001
        MORROCO.DEMTRABUSGSL.(2015*2050)        0.0001
        MORROCO.DEMINDELC.(2015*2050)           0.0001
        MORROCO.INDENEFFGD.(2015*2050)          1184
        MORROCO.INDENEFFDP.(2015*2050)          2368
        MORROCO.DEMINDHEEH.(2015*2050)          227
        MORROCO.DEMINDHEEL.(2015*2050)          182.68
        MORROCO.DEMINDHECOA.(2015*2050)         447
        MORROCO.DEMINDHEOIL.(2015*2050)         447
        MORROCO.DEMINDHEBIO.(2015*2050)         359.79
        MORROCO.DEMRESELC.(2015*2050)           0.0001
        MORROCO.RESENEFFGD.(2015*2050)          1184
        MORROCO.RESENEFFDP.(2015*2050)          2368
        MORROCO.DEMRESCKNELC.(2015*2050)        76.2
        MORROCO.DEMRESCKNOIL.(2015*2050)        6.1
        MORROCO.DEMRESCKNBIO.(2015*2050)        0.6
        MORROCO.DEMCOMELC.(2015*2050)           0.0001
        MORROCO.COMENEFFGD.(2015*2050)          1184
        MORROCO.COMENEFFDP.(2015*2050)          2368
        MORROCO.DEMCOMHEOIL.(2015*2050)         98.5
        MORROCO.DEMCOMHEBIO.(2015*2050)         359.79
        MORROCO.DEMCOMHEEL.(2015*2050)          182.68
        MORROCO.MINHYD.(2015*2050)              0.0001
        MORROCO.PWRHYD004.(2015*2050)           3000
        MORROCO.PWRSOL001S.(2015*2050)          3128
        MORROCO.PWRWND001S.(2015*2050)          2319.893
        MORROCO.DEMRESHEBIO.(2015*2050)         359.79
        MORROCO.DEMRESHEOIL.(2015*2050)         98.5
        MORROCO.DEMRESHEEL.(2015*2050)          182.68
/;      

parameter  VariableCost(r,t,m,y)  /
        MORROCO.IMPOIL.1.2015	                13.145
        MORROCO.IMPOIL.1.2016			10.329
        MORROCO.IMPOIL.1.2017			8.448
        MORROCO.IMPOIL.1.2018			10.703
        MORROCO.IMPOIL.1.2019			12.76
        MORROCO.IMPOIL.1.2020			12.199
        MORROCO.IMPOIL.1.2021			12.3112
        MORROCO.IMPOIL.1.2022			12.4234
        MORROCO.IMPOIL.1.2023			12.5356
        MORROCO.IMPOIL.1.2024			12.6478
        MORROCO.IMPOIL.1.2025			12.76
        MORROCO.IMPOIL.1.2026			13.0614
        MORROCO.IMPOIL.1.2027			13.3628
        MORROCO.IMPOIL.1.2028			13.6642
        MORROCO.IMPOIL.1.2029 			13.9656
        MORROCO.IMPOIL.1.2030 			14.267
        MORROCO.IMPOIL.1.2031 			14.531
        MORROCO.IMPOIL.1.2032 			14.795
        MORROCO.IMPOIL.1.2033 			15.059
        MORROCO.IMPOIL.1.2034 			15.323
        MORROCO.IMPOIL.1.2035 			15.576
        MORROCO.IMPOIL.1.2036			15.84
        MORROCO.IMPOIL.1.2037 			16.104
        MORROCO.IMPOIL.1.2038 			16.368
        MORROCO.IMPOIL.1.2039 			16.632
        MORROCO.IMPOIL.1.2040 			16.896
        MORROCO.IMPOIL.1.2041 			17.16
        MORROCO.IMPOIL.1.2042 			17.424
        MORROCO.IMPOIL.1.2043 			17.688
        MORROCO.IMPOIL.1.2044 			17.952
        MORROCO.IMPOIL.1.2045			18.205
        MORROCO.IMPOIL.1.2046 			18.469
        MORROCO.IMPOIL.1.2047 			18.733
        MORROCO.IMPOIL.1.2048 			18.997
        MORROCO.IMPOIL.1.2050		        19.261
        MORROCO.MINOIL.1.2015	                11.95
        MORROCO.MINOIL.1.2016	                9.39
        MORROCO.MINOIL.1.2017	                7.68
        MORROCO.MINOIL.1.2018	                9.73
        MORROCO.MINOIL.1.2019	                11.6
        MORROCO.MINOIL.1.2020	                11.09
        MORROCO.MINOIL.1.2021	                11.192
        MORROCO.MINOIL.1.2022	                11.294
        MORROCO.MINOIL.1.2023	                11.396
        MORROCO.MINOIL.1.2024	                11.498
        MORROCO.MINOIL.1.2025	                11.6
        MORROCO.MINOIL.1.2026	                11.874
        MORROCO.MINOIL.1.2027	                12.148
        MORROCO.MINOIL.1.2028	                12.422
        MORROCO.MINOIL.1.2029 	                12.696
        MORROCO.MINOIL.1.2030 	                12.97
        MORROCO.MINOIL.1.2031 	                13.21
        MORROCO.MINOIL.1.2032 	                13.45
        MORROCO.MINOIL.1.2033 	                13.69
        MORROCO.MINOIL.1.2034 	                13.93
        MORROCO.MINOIL.1.2035 	                14.16
        MORROCO.MINOIL.1.2036	                14.4
        MORROCO.MINOIL.1.2037 	                14.64
        MORROCO.MINOIL.1.2038 	                14.88
        MORROCO.MINOIL.1.2039 	                15.12
        MORROCO.MINOIL.1.2040 	                15.36
        MORROCO.MINOIL.1.2041 	                15.6
        MORROCO.MINOIL.1.2042 	                15.84
        MORROCO.MINOIL.1.2043 	                16.08
        MORROCO.MINOIL.1.2044 	                16.32
        MORROCO.MINOIL.1.2045	                16.55
        MORROCO.MINOIL.1.2046 	                16.79
        MORROCO.MINOIL.1.2047 	                17.03
        MORROCO.MINOIL.1.2048 	                17.27
        MORROCO.MINOIL.1.2050	                17.51
        MORROCO.IMPBIO.1.(2015*2050)            1.76
        MORROCO.MINBIO.1.(2015*2050)            1.6
        MORROCO.IMPCOA.1.(2015*2050)            5.66   ## To go more simple I simplified the variable cost for this by taking the average of all the values between 2015 and 2050
        MORROCO.MINCOA.1.(2015*2050)            3.68    ## Same here
        MORROCO.IMPLFO.1.2015			15.8935
        MORROCO.IMPLFO.1.2016			12.4887
        MORROCO.IMPLFO.1.2017			10.2144
        MORROCO.IMPLFO.1.2018			12.9409
        MORROCO.IMPLFO.1.2019			15.428
        MORROCO.IMPLFO.1.2020			14.7497
        MORROCO.IMPLFO.1.2021			14.88536
        MORROCO.IMPLFO.1.2022			15.02102
        MORROCO.IMPLFO.1.2023			15.15668
        MORROCO.IMPLFO.1.2024			15.29234
        MORROCO.IMPLFO.1.2025			15.428
        MORROCO.IMPLFO.1.2026			15.79242
        MORROCO.IMPLFO.1.2027			16.15684
        MORROCO.IMPLFO.1.2028			16.52126
        MORROCO.IMPLFO.1.2029 			16.88568
        MORROCO.IMPLFO.1.2030 			17.2501
        MORROCO.IMPLFO.1.2031 			17.5693
        MORROCO.IMPLFO.1.2032 			17.8885
        MORROCO.IMPLFO.1.2033 			18.2077
        MORROCO.IMPLFO.1.2034 			18.5269
        MORROCO.IMPLFO.1.2035 			18.8328
        MORROCO.IMPLFO.1.2036			19.152
        MORROCO.IMPLFO.1.2037 			19.4712
        MORROCO.IMPLFO.1.2038 			19.7904
        MORROCO.IMPLFO.1.2039 			20.1096
        MORROCO.IMPLFO.1.2040 			20.4288
        MORROCO.IMPLFO.1.2041 			20.748
        MORROCO.IMPLFO.1.2042 			21.0672
        MORROCO.IMPLFO.1.2043 			21.3864
        MORROCO.IMPLFO.1.2044 			21.7056
        MORROCO.IMPLFO.1.2045			22.0115
        MORROCO.IMPLFO.1.2046 			22.3307
        MORROCO.IMPLFO.1.2047 			22.6499
        MORROCO.IMPLFO.1.2048 			22.9691
        MORROCO.IMPLFO.1.2050			23.2883   
        MORROCO.IMPHFO.1.2015			9.56
        MORROCO.IMPHFO.1.2016			7.512
        MORROCO.IMPHFO.1.2017			6.144
        MORROCO.IMPHFO.1.2018			7.784
        MORROCO.IMPHFO.1.2019			9.28
        MORROCO.IMPHFO.1.2020			8.872
        MORROCO.IMPHFO.1.2021			8.9536
        MORROCO.IMPHFO.1.2022			9.0352
        MORROCO.IMPHFO.1.2023			9.1168
        MORROCO.IMPHFO.1.2024			9.1984
        MORROCO.IMPHFO.1.2025			9.28
        MORROCO.IMPHFO.1.2026			9.4992
        MORROCO.IMPHFO.1.2027			9.7184
        MORROCO.IMPHFO.1.2028			9.9376
        MORROCO.IMPHFO.1.2029 			10.1568
        MORROCO.IMPHFO.1.2030 			10.376
        MORROCO.IMPHFO.1.2031 			10.568
        MORROCO.IMPHFO.1.2032 			10.76
        MORROCO.IMPHFO.1.2033 			10.952
        MORROCO.IMPHFO.1.2034 			11.144
        MORROCO.IMPHFO.1.2035 			11.328
        MORROCO.IMPHFO.1.2036			11.52
        MORROCO.IMPHFO.1.2037 			11.712
        MORROCO.IMPHFO.1.2038 			11.904
        MORROCO.IMPHFO.1.2039 			12.096
        MORROCO.IMPHFO.1.2040 			12.288
        MORROCO.IMPHFO.1.2041 			12.48
        MORROCO.IMPHFO.1.2042 			12.672
        MORROCO.IMPHFO.1.2043 			12.864
        MORROCO.IMPHFO.1.2044 			13.056
        MORROCO.IMPHFO.1.2045			13.24
        MORROCO.IMPHFO.1.2046 			13.432
        MORROCO.IMPHFO.1.2047 			13.624
        MORROCO.IMPHFO.1.2048 			13.816
        MORROCO.IMPHFO.1.2050			14.008
        MORROCO.UPSREF001.1.(2015*2050)         0.71775
        MORROCO.UPSREF002.1.(2015*2050)         0.71775
        MORROCO.IMPNGS.1.(2015*2050)            8.6
        MORROCO.MINNGS.1.(2015*2050)            7.1
        MORROCO.MINSOL.1.(2015*2050)            0.0001
        MORROCO.MINWND.1.(2015*2050)            0.0001
        MORROCO.IMPURN.1.(2015*2050)            0.21
        MORROCO.MINURN.1.(2015*2050)            0
        MORROCO.MINGEO.1.(2015*2050)            0.0001
        MORROCO.PWRBIO001.1.(2015*2050)         0.0001
        MORROCO.PWRCOA001.1.(2015*2050)         0.0001
        MORROCO.PWRGEO.1.(2015*2050)            0.0001
        MORROCO.PWROHC001.1.(2015*2050)         0.0001
        MORROCO.PWROHC002.1.(2015*2050)         0.0001
        MORROCO.PWRNGS001.1.(2015*2050)         0.0001
        MORROCO.PWRNGS002.1.(2015*2050)         0.0001
        MORROCO.PWRSOL001.1.(2015*2050)         0.0001
        MORROCO.PWRCSP001.1.(2015*2050)         0.0001
        MORROCO.PWRCSP002.1.(2015*2050)         0.0001
        MORROCO.PWRHYD001.1.(2015*2050)         0.0001
        MORROCO.PWRHYD002.1.(2015*2050)         0.0001
        MORROCO.PWRHYD003.1.(2015*2050)         0.0001
        MORROCO.PWRWND001.1.(2015*2050)         0.0001
        MORROCO.PWRWND002.1.(2015*2050)         0.0001
        MORROCO.PWRNUC.1.(2015*2050)            0.0001
        MORROCO.PWRTRNIMP.1.(2015*2050)         0
        MORROCO.BACKSTOP001.1.(2015*2050)       1e9              
        MORROCO.PWRTRN.1.(2015*2050)            0.0001
        MORROCO.PWRDIST.1.(2015*2050)           0.0001
        MORROCO.PWROHC003.1.(2015*2050)         0.0001
        MORROCO.PWRSOL002.1.(2015*2050)         0.0001
        MORROCO.PWRTRNEXP.1.(2015*2050)         0
        MORROCO.BACKSTOP002.1.(2015*2050)       1e9
        MORROCO.DEMTRAEVC.1.(2015*2050)         0.0001
        MORROCO.DEMTRAMCYELC.1.(2015*2050)      0.0001
        MORROCO.DEMTRACARELC.1.(2015*2050)      0.0001
        MORROCO.DEMTRABUSELC.1.(2015*2050)      0.0001
        MORROCO.DEMTRAMCYGSL.1.(2015*2050)      0.0001
        MORROCO.DEMTRACARGSL.1.(2015*2050)      0.0001
        MORROCO.DEMTRABUSGSL.1.(2015*2050)      0.0001
        MORROCO.DEMINDELC.1.(2015*2050)         0.0001
        MORROCO.INDENEFFGD.1.(2015*2050)        0.0001
        MORROCO.INDENEFFDP.1.(2015*2050)        0.0001
        MORROCO.DEMINDHEEH.1.(2015*2050)        0.0001
        MORROCO.DEMINDHEEL.1.(2015*2050)        0.0001
        MORROCO.DEMINDHECOA.1.(2015*2050)       0.0001
        MORROCO.DEMINDHEOIL.1.(2015*2050)       0.0001
        MORROCO.DEMINDHEBIO.1.(2015*2050)       3.113
        MORROCO.DEMRESELC.1.(2015*2050)         0.0001
        MORROCO.RESENEFFGD.1.(2015*2050)        0.0001
        MORROCO.RESENEFFDP.1.(2015*2050)        0.0001
        MORROCO.DEMRESCKNELC.1.(2015*2050)      0.0001
        MORROCO.DEMRESCKNOIL.1.(2015*2050)      0.0001
        MORROCO.DEMRESCKNBIO.1.(2015*2050)      0.0001
        MORROCO.DEMCOMELC.1.(2015*2050)         0.0001
        MORROCO.COMENEFFGD.1.(2015*2050)        0.0001
        MORROCO.COMENEFFDP.1.(2015*2050)        0.0001
        MORROCO.DEMCOMHEOIL.1.(2015*2050)       0.0001
        MORROCO.DEMCOMHEBIO.1.(2015*2050)       0.0001
        MORROCO.DEMCOMHEEL.1.(2015*2050)        0.0001
        MORROCO.MINHYD.1.(2015*2050)            0.0001
        MORROCO.PWRHYD004.1.(2015*2050)         0.0001
        MORROCO.PWRSOL001S.1.(2015*2050)        0.0001
        MORROCO.PWRWND001S.1.(2015*2050)        0.0001
        MORROCO.DEMRESHEBIO.1.(2015*2050)       0.0001
        MORROCO.DEMRESHEOIL.1.(2015*2050)       0.0001
        MORROCO.DEMRESHEEL.1.(2015*2050)        0.0001
/;

VariableCost(r,t,m,y)$(VariableCost(r,t,m,y) = 0) = 1e-5;

parameter   FixedCost   /
        MORROCO.IMPOIL.(2015*2050)	        0
        MORROCO.MINOIL.(2015*2050)	        0
        MORROCO.IMPBIO.(2015*2050)	        0
        MORROCO.MINBIO.(2015*2050)	        0
        MORROCO.IMPCOA.(2015*2050)	        0
        MORROCO.MINCOA.(2015*2050)	        0
        MORROCO.IMPLFO.(2015*2050)	        0
        MORROCO.IMPHFO.(2015*2050)	        0
        MORROCO.UPSREF001.(2015*2050)	        0
        MORROCO.UPSREF002.(2015*2050)	        0
        MORROCO.IMPNGS.(2015*2050)	        0
        MORROCO.MINNGS.(2015*2050)	        0
        MORROCO.MINSOL.(2015*2050)	        0
        MORROCO.MINWND.(2015*2050)	        0
        MORROCO.IMPURN.(2015*2050)	        0
        MORROCO.MINURN.(2015*2050)	        0
        MORROCO.MINGEO.(2015*2050)	        0
        MORROCO.PWRBIO001.(2015*2050)	        75
        MORROCO.PWRCOA001.(2015*2050)	        78
        MORROCO.PWRGEO.(2015*2050)	        120
        MORROCO.PWROHC001.(2015*2050)	        35
        MORROCO.PWROHC002.(2015*2050)	        45
        MORROCO.PWRNGS001.(2015*2050)	        35
        MORROCO.PWRNGS002.(2015*2050)	        20
        MORROCO.PWRSOL001.(2015*2050)	        28.145
        MORROCO.PWRCSP001.(2015*2050)	        60.51
        MORROCO.PWRCSP002.(2015*2050)	        86.45
        MORROCO.PWRHYD001.(2015*2050)	        90
        MORROCO.PWRHYD002.(2015*2050)	        75
        MORROCO.PWRHYD003.(2015*2050)	        90
        MORROCO.PWRWND001.(2015*2050)	        79.4
        MORROCO.PWRWND002.(2015*2050)	        200
        MORROCO.PWRNUC.(2015*2050)	        184.11
        MORROCO.PWRTRNIMP.(2015*2050)	        0
        MORROCO.BACKSTOP001.(2015*2050)	        999999999
        MORROCO.PWRTRN.(2015*2050)	        0
        MORROCO.PWRDIST.(2015*2050)	        0
        MORROCO.PWROHC003.(2015*2050)	        23
        MORROCO.PWRSOL002.(2015*2050)	        136.8
        MORROCO.PWRTRNEXP.(2015*2050)	        0
        MORROCO.BACKSTOP002.(2015*2050)	        999999999
        MORROCO.DEMTRAEVC.(2015*2050)	        0
        MORROCO.DEMTRAMCYELC.(2015*2050)	0
        MORROCO.DEMTRACARELC.(2015*2050)	367.66
        MORROCO.DEMTRABUSELC.(2015*2050)	623.215
        MORROCO.DEMTRAMCYGSL.(2015*2050)	30.116
        MORROCO.DEMTRACARGSL.(2015*2050)	0
        MORROCO.DEMTRABUSGSL.(2015*2050)	0
        MORROCO.DEMINDELC.(2015*2050)	        0
        MORROCO.INDENEFFGD.(2015*2050)	        0
        MORROCO.INDENEFFDP.(2015*2050)	        0
        MORROCO.DEMINDHEEH.(2015*2050)	        0
        MORROCO.DEMINDHEEL.(2015*2050)	        0
        MORROCO.DEMINDHECOA.(2015*2050)	        27
        MORROCO.DEMINDHEOIL.(2015*2050)	        27
        MORROCO.DEMINDHEBIO.(2015*2050)	        14.36
        MORROCO.DEMRESELC.(2015*2050)	        0
        MORROCO.RESENEFFGD.(2015*2050)	        0
        MORROCO.RESENEFFDP.(2015*2050)	        0
        MORROCO.DEMRESCKNELC.(2015*2050)	0
        MORROCO.DEMRESCKNOIL.(2015*2050)	0
        MORROCO.DEMRESCKNBIO.(2015*2050)	0
        MORROCO.DEMCOMELC.(2015*2050)	        0
        MORROCO.COMENEFFGD.(2015*2050)	        0
        MORROCO.COMENEFFDP.(2015*2050)	        0
        MORROCO.DEMCOMHEOIL.(2015*2050)	        9
        MORROCO.DEMCOMHEBIO.(2015*2050)	        14.36
        MORROCO.DEMCOMHEEL.(2015*2050)	        0
        MORROCO.MINHYD.(2015*2050)	        0
        MORROCO.PWRHYD004.(2015*2050)	        90
        MORROCO.PWRSOL001S.(2015*2050)	        28.145
        MORROCO.PWRWND001S.(2015*2050)	        79.4
        MORROCO.DEMRESHEBIO.(2015*2050)	        14.36
        MORROCO.DEMRESHEOIL.(2015*2050)	        9
        MORROCO.DEMRESHEEL.(2015*2050)	        0
/;

##Parameters Storage


## Parameters - Capacity and investment constraints   

CapacityOfOneTechnologyUnit(r,t,y) = 0;

parameter TotalAnnualMaxCapacity(r,t,y) /
MOROCCO.PWRGEO.(2015*2050) 0

MOROCCO.PWRHYD001.(2015*2050) 1.207

MOROCCO.PWRHYD002.(2015*2050) 0.453

MOROCCO.PWRHYD003.(2015*2050) 0.0486

MOROCCO.PWRHYD004.(2015*2050) 0.0054


/;

parameter TotalAnnualMinCapacity(r,t,y)=0;

parameter TotalAnnualMaxCapacityInvestment(r,t,y) = 99999;

TotalAnnualMaxCapacityInvestment(r,t,y)/
MOROCCO.UPSREF001.(2015*2020) 0

MOROCCO.UPSREF002.(2015*2020) 0

MOROCCO.PWRBIO001.(2015*2020) 0

MOROCCO.PWRGEO.(2015*2020) 0

MOROCCO.PWROHC001.(2015*2020) 0

MOROCCO.PWRNGS002.(2015*2020) 0

MOROCCO.PWRSOL001.(2015*2020) 0

MOROCCO.PWRCSP002.(2015*2020) 0

MOROCCO.PWRWND002.(2015*2020) 0

MOROCCO.PWRNUC.(2015*2020) 0

MOROCCO.PWROHC003.(2015*2020) 0

MOROCCO.DEMTRAEVC.(2015*2020) 0

MOROCCO.DEMTRAMCYELC.(2015*2020) 0

MOROCCO.DEMTRACARELC.(2015*2020) 0

MOROCCO.DEMTRABUSELC.(2015*2020) 0

MOROCCO.INDENEFFGD.(2015*2020) 0

MOROCCO.INDENEFFDP.(2015*2020) 0

MOROCCO.DEMINDHEEH.(2015*2020) 0

MOROCCO.DEMINDHEEL.(2015*2020) 0

MOROCCO.RESENEFFGD.(2015*2020) 0

MOROCCO.RESENEFFDP.(2015*2020) 0

MOROCCO.DEMRESCKNELC.(2015*2020) 0

MOROCCO.COMENEFFGD.(2015*2020) 0

MOROCCO.COMENEFFDP.(2015*2020) 0

MOROCCO.DEMCOMHEEL.(2015*2020) 0

MOROCCO.PWRHYD004.(2015*2020) 0

MOROCCO.PWRSOL001S.(2015*2020) 0

MOROCCO.PWRWND001S.(2015*2020) 0

MOROCCO.DEMRESHEEL.(2015*2020) 0


/;

TotalAnnualMinCapacityInvestment(r,t,y) = 0;

##
TotalAnnualMaxCapacity(r,t,y)$(TotalAnnualMaxCapacity(r,t,y) = 0) = 99999;
#TotalAnnualMaxCapacity(r,'TXE','1990') = 0;
#TotalAnnualMaxCapacity(r,'RHE','1990') = 0;
##

## Parameters - Activity constraints  

TotalTechnologyAnnualActivityUpperLimit(r,t,y) = 99999;

TotalTechnologyAnnualActivityUpperLimit(r,t,y) /
MOROCCO.PWRTRNIMP.2015 18.5
MOROCCO.PWRTRNIMP.2016 19
MOROCCO.PWRTRNIMP.2017 21.8
MOROCCO.PWRTRNIMP.(2018*2050) 13.4

MOROCCO.PWRTRNEXP.2015 0.6
MOROCCO.PWRTRNEXP.2016 0.5
MOROCCO.PWRTRNEXP.2017 0.6
MOROCCO.PWRTRNEXP.(2018*2050) 1.3

MOROCCO.INDENEFFGD.(2015*2019) 0

MOROCCO.INDENEFFDP.(2015*2019) 0

MOROCCO.RESENEFFGD.(2015*2019) 0

MOROCCO.RESENEFFDP.(2015*2019) 0

MOROCCO.COMENEFFGD.(2015*2019) 0

MOROCCO.COMENEFFDP.(2015*2019) 0

MOROCCO.PWRBIO001.2015 5.54
MOROCCO.PWRBIO001.2016 5.71
MOROCCO.PWRBIO001.2017 5.88
MOROCCO.PWRBIO001.2018 6.05
MOROCCO.PWRBIO001.2019 6.22
MOROCCO.PWRBIO001.2020 6.39
MOROCCO.PWRBIO001.2021 6.75
MOROCCO.PWRBIO001.2022 7.12

MOROCCO.PWRCOA001.2015 62.61
MOROCCO.PWRCOA001.2016 62.15
MOROCCO.PWRCOA001.2017 64.16
MOROCCO.PWRCOA001.2018 77.54
MOROCCO.PWRCOA001.2019 97.84
MOROCCO.PWRCOA001.2020 98.94
MOROCCO.PWRCOA001.2021 86.68
MOROCCO.PWRCOA001.2022 85.73

MOROCCO.PWRGEO.(2015*2022) 0

MOROCCO.PWRNGS001.2015 22.31
MOROCCO.PWRNGS001.2016 22.76
MOROCCO.PWRNGS001.2017 22.49
MOROCCO.PWRNGS001.2018 20.2
MOROCCO.PWRNGS001.2019 18.4
MOROCCO.PWRNGS001.2020 13.94
MOROCCO.PWRNGS001.2021 19.06
MOROCCO.PWRNGS001.2022 99999.5

MOROCCO.PWRNGS002.2015 22.31
MOROCCO.PWRNGS002.2016 22.76
MOROCCO.PWRNGS002.2017 22.49
MOROCCO.PWRNGS002.2018 20.2
MOROCCO.PWRNGS002.2019 18.4
MOROCCO.PWRNGS002.2020 13.94
MOROCCO.PWRNGS002.2021 19.06
MOROCCO.PWRNGS002.2022 99999.5

MOROCCO.PWRSOL001.(2015*2022) 0

MOROCCO.PWRCSP001.(2015*2022) 0

MOROCCO.PWRCSP002.(2015*2022) 0

MOROCCO.PWRHYD001.2015 9.71
MOROCCO.PWRHYD001.2016 7.48
MOROCCO.PWRHYD001.2017 7.13
MOROCCO.PWRHYD001.2018 8.69
MOROCCO.PWRHYD001.2019 7.45
MOROCCO.PWRHYD001.2020 6.14
MOROCCO.PWRHYD001.2021 5.86
MOROCCO.PWRHYD001.2022 5.86

MOROCCO.PWRHYD002.2015 9.71
MOROCCO.PWRHYD002.2016 7.48
MOROCCO.PWRHYD002.2017 7.13
MOROCCO.PWRHYD002.2018 8.69
MOROCCO.PWRHYD002.2019 7.45
MOROCCO.PWRHYD002.2020 6.14
MOROCCO.PWRHYD002.2021 5.86
MOROCCO.PWRHYD002.2022 5.86

MOROCCO.PWRHYD003.2015 9.71
MOROCCO.PWRHYD003.2016 7.48
MOROCCO.PWRHYD003.2017 7.13
MOROCCO.PWRHYD003.2018 8.69
MOROCCO.PWRHYD003.2019 7.45
MOROCCO.PWRHYD003.2020 6.14
MOROCCO.PWRHYD003.2021 5.86
MOROCCO.PWRHYD003.2022 5.86

MOROCCO.PWRWND001.(2015*2022) 0

MOROCCO.PWRWND002.(2015*2022) 0

/;

TotalTechnologyAnnualActivityLowerLimit(r,t,y) = 0;

TotalTechnologyAnnualActivityLowerLimit(r,t,y) /
MOROCCO.PWRTRNIMP.2015 17.575
MOROCCO.PWRTRNIMP.2016 18.05
MOROCCO.PWRTRNIMP.2017 20.71
MOROCCO.PWRTRNIMP.(2018*2050) 12.73

MOROCCO.PWRTRNEXP.2015 0.57
MOROCCO.PWRTRNEXP.2016 0.475
MOROCCO.PWRTRNEXP.2017 0.57
MOROCCO.PWRTRNEXP.(2018*2050) 1.235

MOROCCO.PWRBIO001.2015 4.54
MOROCCO.PWRBIO001.2016 4.71
MOROCCO.PWRBIO001.2017 4.88
MOROCCO.PWRBIO001.2018 5.05
MOROCCO.PWRBIO001.2019 5.22
MOROCCO.PWRBIO001.2020 5.39
MOROCCO.PWRBIO001.2021 5.75
MOROCCO.PWRBIO001.2022 6.12

MOROCCO.PWRCOA001.2015 61.61
MOROCCO.PWRCOA001.2016 61.15
MOROCCO.PWRCOA001.2017 63.16
MOROCCO.PWRCOA001.2018 76.54
MOROCCO.PWRCOA001.2019 96.84
MOROCCO.PWRCOA001.2020 97.94
MOROCCO.PWRCOA001.2021 85.68
MOROCCO.PWRCOA001.2022 84.73

MOROCCO.PWRGEO.(2015*2022) 0

MOROCCO.PWRNGS001.2015 21.31
MOROCCO.PWRNGS001.2016 21.76
MOROCCO.PWRNGS001.2017 21.49
MOROCCO.PWRNGS001.2018 19.2
MOROCCO.PWRNGS001.2019 17.4
MOROCCO.PWRNGS001.2020 12.94
MOROCCO.PWRNGS001.2021 18.06
MOROCCO.PWRNGS001.2022 99998.5

MOROCCO.PWRNGS001.2015 21.31
MOROCCO.PWRNGS001.2016 21.76
MOROCCO.PWRNGS001.2017 21.49
MOROCCO.PWRNGS001.2018 19.2
MOROCCO.PWRNGS001.2019 17.4
MOROCCO.PWRNGS001.2020 12.94
MOROCCO.PWRNGS001.2021 18.06
MOROCCO.PWRNGS001.2022 99998.5

MOROCCO.PWRSOL001.(2015*2022) 0

MOROCCO.PWRCSP001.(2015*2022) 0

MOROCCO.PWRCSP002.(2015*2022) 0

MOROCCO.PWRHYD001.2015 8.71
MOROCCO.PWRHYD001.2016 6.48
MOROCCO.PWRHYD001.2017 6.13
MOROCCO.PWRHYD001.2018 7.69
MOROCCO.PWRHYD001.2019 6.45
MOROCCO.PWRHYD001.2020 5.14
MOROCCO.PWRHYD001.2021 4.86
MOROCCO.PWRHYD001.2022 4.86

MOROCCO.PWRHYD001.2015 8.71
MOROCCO.PWRHYD001.2016 6.48
MOROCCO.PWRHYD001.2017 6.13
MOROCCO.PWRHYD001.2018 7.69
MOROCCO.PWRHYD001.2019 6.45
MOROCCO.PWRHYD001.2020 5.14
MOROCCO.PWRHYD001.2021 4.86
MOROCCO.PWRHYD001.2022 4.86

MOROCCO.PWRHYD001.2015 8.71
MOROCCO.PWRHYD001.2016 6.48
MOROCCO.PWRHYD001.2017 6.13
MOROCCO.PWRHYD001.2018 7.69
MOROCCO.PWRHYD001.2019 6.45
MOROCCO.PWRHYD001.2020 5.14
MOROCCO.PWRHYD001.2021 4.86
MOROCCO.PWRHYD001.2022 4.86

MOROCCO.PWRWND001.(2015*2022) 0

MOROCCO.PWRWND002.(2015*2022) 0


/;

TotalTechnologyModelPeriodActivityUpperLimit(r,t) = 99999;

TotalTechnologyModelPeriodActivityUpperLimit(r,t) /
MOROCCO.MINOIL 4.16092
MOROCCO.MINCOA 410.3931942
MOROCCO.MINNGS 50.95

/;

TotalTechnologyModelPeriodActivityLowerLimit(r,t) = 0;

##  Parameters - Reserve margin

parameter ReserveMarginTagTechnology(r,t,y) /
  MOROCCO.PWRBIO001.(2015*2050)  1
  MOROCCO.PWRCOA001.(2015*2050)  1
  MOROCCO.PWRGEO.(2015*2050)  1
  MOROCCO.PWROHC001.(2015*2050)  1
  MOROCCO.PWROHC002.(2015*2050)  1
  MOROCCO.PWRNGS001.(2015*2050)  1
  MOROCCO.PWRNGS002.(2015*2050)  1 
  MOROCCO.PWRHYD001.(2015*2050)  1
  MOROCCO.PWRNUC.(2015*2050)  1
  MOROCCO.BACKSTOP001.(2015*2050)  1
  MOROCCO.PWRTRN.(2015*2050)  1
  MOROCCO.PWRDIST.(2015*2050)  1     
  MOROCCO.BACKSTOP002.(2015*2050)  1

/;

parameter ReserveMarginTagFuel(r,f,y) /
  MOROCCO.INDELC.(2015*2050)  1
  MOROCCO.RESELC.(2015*2050)  1
  MOROCCO.COMELC.(2015*2050)  1
  #FOR THE REST OF FUELS THIS VALUE SHOULD BE ZERO, AS IT DOES NOT APPLY
/;

parameter ReserveMargin(r,y) /
  MOROCCO.(2015*2050)  1.15 ##15% RESERVE MARGIN ASSUMED BY DEFAULT
/;


## Parameters - RE Generation Target    

RETagTechnology(r,t,y) = 0;

RETagFuel(r,f,y) = 0;

REMinProductionTarget(r,y) = 0;### CAUTION: IT DEPENDS ON THE SCENARIO OF THE GREEN HYDROGEN ROADMAP PROPOSED BY THE MOROCCOAN GOVERNMENT.

## Parameters - Emissions 

parameter EmissionActivityRatio(r,t,e,m,y) /
  MOROCCO.IMPOIL.EMICO2.1.(2015*2050)  73.3  ### CAUTION: THESE WERE GIVEN AS PERCENTAGES IN UTOPIA.DATA, AND IN THIS CASE THEY HAVE UNITS kg/GJ
  MOROCCO.MINOIL.EMICO2.1.(2015*2050)  73.3
  MOROCCO.IMPBIO.EMICO2.1.(2015*2050)  100
  MOROCCO.MINBIO.EMICO2.1.(2015*2050)  100
  MOROCCO.IMPCOA.EMICO2.1.(2015*2050)  94.6
  MOROCCO.MINCOA.EMICO2.1.(2015*2050)  94.6
  MOROCCO.IMPLFO.EMICO2.1.(2015*2050)  69.3
  MOROCCO.IMPHFO.EMICO2.1.(2015*2050)  77.4
  MOROCCO.IMPNGS.EMICO2.1.(2015*2050)  56.1
  MOROCCO.MINNGS.EMICO2.1.(2015*2050)  56.1


/;

EmissionsPenalty(r,e,y) = 0;

AnnualExogenousEmission(r,e,y) = 0;

AnnualEmissionLimit(r,e,y) = 9999;

ModelPeriodExogenousEmission(r,e) = 0;

ModelPeriodEmissionLimit(r,e) = 9999;

