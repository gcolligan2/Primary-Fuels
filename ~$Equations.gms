*This File is the addition of equations to the models.*


Set
x "Production Sector" /Hydro, Natural-Gas, Coal, Wind/,
y "Portland electricity demand";

Parameters
a(x) "Production Capcity of the sector (MWh)",
b(x) "Cost of production of sector ($/MWh)",
c(x) "CO2 given off by the sector (ton/MWh)",
d "Cost of ton of CO2 ($/ton)";

Positive Variables
P(x) "Electricity Production";

Variables
Z(x,y)      "Production Function ($)";

Equations
TotalCap(x)	    "Total Production cannot exceed capcity",
IndvCap(x) 	"Production of individual sector cannot exceed capcity"
IndvPro(x,y) 	"Production of each individual Sector", 
TotalPro(x,y)	"Production Function";

TotalCap(x)..
        sum(a(x)) =g= sum(P(x));
        
IndvCap(x)..
        a(x) =g= P(x);
        

