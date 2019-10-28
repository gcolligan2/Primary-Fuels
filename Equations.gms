*This File is the addition of providing the model on solving the production bundles of portland at any*
*given time*


Set
x "Production Sector" /Hydro, NaturalGas, Coal, Wind/;

alias (x,x1,x2);

Parameters
a(x) "Production Capcity of the sector (MWh)"
    /   Hydro       450
        NaturalGas  1725
        Coal        800
        Wind        850 /
b(x) "Cost of production of sector ($/MWh)"
    /   Hydro       1
        NaturalGas  65
        Coal        125
        Wind        20  /
c(x) "CO2 given off by the sector (ton/MWh)"
    /   Hydro       0.001
        NaturalGas  8.5
        Coal        2.196
        Wind        0.002/
y "Portland electricity demand" /2625/;

Scalar
d "Cost of ton of CO2 ($/ton)" /10/;

Positive Variable
i(x)    "Production of Sector (MWh)"; 

Variable
Z      "Production Function ($)";

equations
TotalCap(x)	"Total Production must meet demand"
IndvCap(x)  "Individual Production Limit"
Zn		    "Production Function";

Zn ..  Z =e= sum(x, i(x)*b(x) + i(x)*c(x)*d) ;
TotalCap(x) .. y =l= sum(x1,i(x1));
IndvCap(x) .. i(x) =l= a(x);

Model PortlandElectricity /all/;

Solve PortlandElectricity using lp minimzing Z;

display i.l;









