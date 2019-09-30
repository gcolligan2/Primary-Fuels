*This File is the addition of equations to the models.*


Set
x "Production Sector" /Hydro, Natural Gas, Coal, Wind/,
y "Portland electricity demand";

Parameters
a(x) "Production Capcity of the sector (MWh)",
b(x) "Cost of production of sector ($/MWh)",
c(x) "CO2 given off by the sector (ton/MWh)",
d "Cost of ton of CO2 ($/ton)";

Positive Variables
P(x,y) "Electricity Production";

Variables
Z      "Production Function ($)";

equations
TotalCap(x,y)	"Total Production cannot exceed capcity",
IndvCap(x,y) 	"Production of individual sector cannot exceed capcity"
IndvPro(x,y) 	"Production of each individual Sector", 
Z(x,y)			"Production Function";

