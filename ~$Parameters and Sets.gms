*This File will outline the sets, parameters, Variables, and equations/functions
*used for this model.

Set
x "Production Sector" /Hydro, Natural Gas, Coal, Wind/,
y "Portland electricity demand";

Parameters
a(x) "Production Capcity of the sector (MWh)",
b(x) "Cost of production of sector ($/MWh)",
c(x) "CO2 given off by the sector (ton/MWh)",
d "Cost of ton of CO2 ($/ton)";

Variables
P(x,y) "Electricity Production",
Z      "Production Function ($)";










